.PHONY: all run_go run_python run_cpp

all: run_go run_python run_cpp

run_go:
	@echo "Running Go app..."
	@bazel run //golang:app

run_python:
	@echo "Running Python app..."
	@bazel run //python:app

run_cpp:
	@echo "Running C++ app..."
	@bazel run //cpp:app

run_rs:
	@echo "Running Rust app..."
	@bazel run //rs:app
