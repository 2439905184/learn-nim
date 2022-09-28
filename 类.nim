type Dog = ref object of RootObj
  name: string
# 动态绑定函数到类上面
method a(self:Dog) {.base} = 
  echo "dog"
  
var dog1 = Dog(name: "dog1")
var dog2 = Dog(name: "dog2")

echo dog1.name
echo dog2.name
dog1.a()
dog2.a()