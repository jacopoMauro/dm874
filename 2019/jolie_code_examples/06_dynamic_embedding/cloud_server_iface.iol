type LoadRequest:void {
  .program:string
  .type:string
}

interface CloudServerIface {
RequestResponse:
  load(LoadRequest)(any),
  unload(any)(void)
}
