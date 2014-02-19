# Install docker on MacOSX

Install docker on MacOSX as described here:
http://docs.docker.io/en/latest/installation/mac/

## Example

```puppet
  class{'boot2docker': user => 'alex'}
```

## Requirements

VirtualBox: https://www.virtualbox.org/wiki/Downloads

## Notes

Remember to export the DOCKER_HOST variable in your session:

```bash
  export DOCKER_HOST=tcp://127.0.0.1:4243
```

## Tested on

MacOSX 10.9.1
