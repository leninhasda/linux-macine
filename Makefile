test: build_test run_test

build_test:
	docker build -t ansible_test -f test.Dockerfile .

run_test:
	docker run -it ansible_test bash