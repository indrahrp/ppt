define mymodule::printk() {
        notice("In notice the value is : ${name}")
	notify{"In notify the value is : ${name}": withpath => true}
}

