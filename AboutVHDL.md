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

---


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
- ```In```, ```Out```
- ```Buffer``` 모드 & ```Inout```모드

#### ```INOUT```모드
- Inout은 입출력 포트로 사용되므로 souce또는 destination에 모두 쓸 수 있음
- 그러나 한 개의 문장에 모두 쓰는건 불가능
- 입출력 모드가 정해진 경우 assign statement 에서의 엄격한 규정은 하드웨어를 다룸
- 하드웨어를 기술할 때 assign이란 연결관계를 표현한 것(netlist)으로서 프로그래밍 언어에서와 같은 operation이 아님
- 
#### ```BUFFER```모드
- Inout과 같은 입출력 포트로서 assign의 소스측 또는 목적지 측에 쓸 수 있다_
- INOUT모드와 다른 점은 단일 할당 문내에서 소스와 목적지 측 모두 동시에 사용할 수 있다는 것이다
- 이는 BUFFER모드에 이미 F/F를 내포하고 있다는 의미

## 순서
1. Package
2. Entity
  - Architecture
    - Process
3. Configuration

### Package
- 단일 목적을 위한 선언(declaration)

### Entity
- 설계 회로의 인터페이스에 관한 정보를 기술한 본체 부분

#### Port 종류
- IN : 입력, 신호가 해당 ENTITY로 입력되는 경우 사용
- OUT : 출력, 해당 ENTITY에서 신호가 출력되는 경우 사용
- INOUT : 입출력, 신호가 해당 ENTITY에서 양방향으로 사용
- BUFFER : 출력 기능 신호에 ENTITY내에서 다시 읽는 기능을 추가한 것
- LINKAGE : 동작에 영향을 주지 않으며, 단지 포트로서 연결된 경우 사용


## Architecture
- 병행구문
  - 병행구문 -> 동시처리
- 순차구문
  - PROCESS문을 통해 순차구문을 지원

#### SIGNAL
- VHDL 합성 시에 선(WIRE)으로 구현
- 각 부품(COMPONENT)의의 연결에 사용되는 외적 변수
