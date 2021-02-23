function boxip() {
  # Todo (maybe):
    # if [ $1 = -r ] rm /tmp/boxip; clear $boxip

    if [[ -z $1 ]]; then
      if [[ -f "/tmp/boxip" ]]; then
        echo -n "Current box ip: "
        cat /tmp/boxip
      else
        echo "Sets the environment variable boxip"
        echo "Usage:"
        echo "boxip <ip>"
      fi
    else
      echo $1 > /tmp/boxip
      export boxip=$1
    fi
}

# Kill ALL running docker images
function killalldockers()
{
  docker kill $(docker ps | grep -v 'CONTAINER' | cut -d ' ' -f 1)
}
