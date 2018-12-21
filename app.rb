require_relative "./system/app"
App.finalize!

App["core.calculation"].call
#App["input.stdin_adapter"].call
#App[:lol].call
