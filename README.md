# Johnson_counter

A **Johnson counter** (also called a **twisted ring counter**) is a type of digital counter used in sequential logic circuits. It is a shift register where the complemented output of the last flip-flop is fed back as input to the first flip-flop. This configuration creates a specific sequence of states, which makes it useful in various digital applications.

---

### Key Characteristics of a Johnson Counter:
1. **Number of States:**
   - A Johnson counter with \( n \) flip-flops generates a sequence of \( 2n \) unique states before repeating.
   - For example, a 4-bit Johnson counter has \( 2 \times 4 = 8 \) states.

2. **Output Pattern:**
   - The counter's outputs resemble a walking bit sequence, where a '1' bit propagates through the flip-flops and then is followed by a '0' bit propagating back.

3. **Configuration:**
   - Typically implemented using D flip-flops.
   - The inverted output of the last flip-flop connects to the input of the first flip-flop.

4. **Clock Input:**
   - All flip-flops share the same clock signal, ensuring synchronous operation.

---

### Truth Table (Example for a 3-bit Johnson Counter):
| Clock Cycle | Q2 (MSB) | Q1 | Q0 (LSB) |
|-------------|-----------|----|----------|
| 0           | 0         | 0  | 0        |
| 1           | 1         | 0  | 0        |
| 2           | 1         | 1  | 0        |
| 3           | 1         | 1  | 1        |
| 4           | 0         | 1  | 1        |
| 5           | 0         | 0  | 1        |
| 6           | 0         | 0  | 0        |
| Repeats     | ...       | ...| ...      |

---

### Applications:
1. **Frequency Division:**
   - The counter divides the clock frequency by the number of states (\( 2n \)).

2. **Digital Displays:**
   - Used for LED or LCD scanning.

3. **State Machines:**
   - Provides a compact, predictable state sequence for control systems.

4. **Pattern Generation:**
   - Generates specific bit patterns for communication protocols or testing.

---

### Advantages:
- Requires fewer flip-flops compared to other counters for generating the same number of states.
- Easy to implement and control.

### Disadvantages:
- Limited scalability as \( 2n \) states may not always be sufficient for complex applications.
- Not suitable for asynchronous operations due to synchronization constraints.
