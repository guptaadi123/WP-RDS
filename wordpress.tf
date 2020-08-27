
resource "null_resource" "nulllocal3"  {
	provisioner "local-exec" {
	    command = "kubectl get pods"
  	}
}
resource "null_resource" "nulllocal4"  {
	provisioner "local-exec" {
	    command = "kubectl create deployment myos --image=wordpress"
  	}
}

resource "null_resource" "nulllocal5"  {
	provisioner "local-exec" {
	    command = "kubectl autoscale deployment myos --cpu-percent=50 --min=1 --max=10"
  	}
}

resource "null_resource" "nulllocal6"  {
	provisioner "local-exec" {
	    command = "kubectl get horizontalpodautoscalers"
  	}
}

resource "null_resource" "nulllocal7"  {
	provisioner "local-exec" {
	    command = "kubectl expose deployment myos --type=NodePort --name=my-service1 --port=80 --target-port=80"
  	}
}


resource "null_resource" "nulllocal8"  {
	provisioner "local-exec" {
	    command = "kubectl get svc"
  	}
}