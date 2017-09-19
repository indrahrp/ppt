
 $arr = ['a1','a2','b3']

  mymodule::printk{$arr: }

ensure_resource('user', 'dan', {'ensure' => 'present' })
