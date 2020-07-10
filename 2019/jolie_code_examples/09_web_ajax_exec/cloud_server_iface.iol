type RunRequest:void {
  .program:string
  .type:string
}

interface CloudServerIface {
RequestResponse:
  run(RunRequest)(any)
}
