// RUN: %target-typecheck-verify-swift -solver-expression-time-threshold=1 -swift-version 5 -solver-disable-shrink -disable-constraint-solver-performance-hacks -solver-enable-operator-designated-types
// REQUIRES: tools-release,no_asserts
// REQUIRES: rdar38378503

// expected-no-diagnostics

let a: [Double] = []
_ = a.map { $0 - 1.0 }
     .map { $0 * $0 }
     .reduce(0, +) / Double(a.count)
