#!/usr/bin/env ruby
# frozen_string_literal: true

FORBIDDEN_TERMS = %w[弧能 法能 架空 虚构 不对应现实].freeze
UNICODE_MATH = /[₀₁₂₃₄₅₆₇₈₉⁰¹²³⁴⁵⁶⁷⁸⁹αβγδεζηθικλμνξοπρστυφχψωΔΣΠΩ]/

paths = ARGV
abort "usage: ruby scripts/validate_spell.rb <spell.md> [...]" if paths.empty?

failed = false

paths.each do |path|
  unless File.file?(path)
    warn "#{path}: file not found"
    failed = true
    next
  end

  bytes = File.binread(path)
  text = bytes.dup.force_encoding(Encoding::UTF_8)
  errors = []

  errors << "invalid UTF-8" unless text.valid_encoding?
  if text.valid_encoding?
    errors << "unpaired display-math delimiter $$" if text.scan("$$").length.odd?

    major_numbers = []

    text.each_line.with_index(1) do |line, number|
      errors << "line #{number}: nonstandard generated heading" if line.match?(/^#\{1,6\}/)
      errors << "line #{number}: Unicode math symbol; use LaTeX" if line.match?(UNICODE_MATH)
      major_numbers << Regexp.last_match(1).to_i if line.match(/^## (\d+)\./)
    end

    unless major_numbers.empty?
      expected = (major_numbers.first..major_numbers.last).to_a
      errors << "major section numbers must be unique, increasing, and continuous" unless major_numbers == expected
    end

    FORBIDDEN_TERMS.each do |term|
      errors << "forbidden reader-facing term: #{term}" if text.include?(term)
    end
  end

  if errors.empty?
    puts "#{path}: OK"
  else
    failed = true
    errors.each { |error| warn "#{path}: #{error}" }
  end
end

exit(failed ? 1 : 0)
