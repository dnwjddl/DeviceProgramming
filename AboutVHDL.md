## VHDL

for example

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity adder2 is
port (x, y: in std_logic;
  s,c : out std_logic);
  
architecture rt1 of 2adder is
begin
  s <= x xor y;
  c <= x and y;
 end rt1;

```

```vhdl
library ieee;
use ieee.std_logic_1164.all;


entity mux21 is
port (a, b: in std_logic_vector(3 downto 0); 
        s : in std_logic;
        y : out std_logic_vector(3 downto 0));
end mux21;

architecture rt1 of mux21 is
begin
  process(a, b, s)
  begin
    if ( s = '0') then
      y <= a;
    else
      y <= b;
    end if;
  end process;
end rt1;
```
**VHDL** : **Very High Speed Integrated Circuits Hardware Description Language**
  
  
- Configuration
- Package
- Package Body
- Entity
- Architecture


### Entity
- 시스템을 구성하는 부분품으로서 이들 사이의 상호 연결을 위한 통로 역할(INTERFACE)
- 내부 설계에 대한 입출력 등을 기술하는 **포장**
- 시스템 임장에서 보면 내부 설계에 대한 것은 가려져 있고 ENTITY에 기술된 입출력 포트만 보게 됨
- Entity name 이 ```MUX21```

---

### Entity의 모드
- ```Buffer``` 모드 & ```Inout```모드

#### ```INOUT```모드
- Inout은 입출력 포트로 사용되므로 souce또는 destination에 모두 쓸 수 있음
- 그러나 한 개의 문장에 모두 쓰는건 불가능
- 입출력 모드가 정해진 경우 assign statement 에서의 엄격한 규정은 하드웨어를 다룸
- 하드웨어를 기술할 때 assign이란 연결관계를 표현한 것(netlist)으로서 프로그래밍 언어에서와 같은 operation이 아님
- 
#### ```BUFFER```모드
- Inout과 같은 입출력 포트로서 assign의 소스측 또는 목적지 측에 쓸 수 있다_
