# Ball and Hoop Control System 🏀⚙️

This project investigates **PID controller design methods** (Ziegler–Nichols, IMC, and FOPDT) on a **Ball and Hoop System** using a servo-driven hoop, Arduino microcontroller, and webcam-based feedback.  
It was developed as part of the **EE407 – Process Control Laboratory** course at **Middle East Technical University (METU)**, Department of Electrical and Electronics Engineering.

---

## 🎯 Objective
The goal of this experiment is to analyze how different PID tuning techniques affect **system stability**, **transient response**, and **disturbance rejection** on a nonlinear dynamic system.  
You will tune the controller parameters theoretically and verify them through real-time experiments.

---

## 🧩 System Overview
The Ball and Hoop setup consists of:
- **Ball** (radius: 1.4 cm) rolling inside a circular hoop (22 cm diameter, 150 g)
- **Servo Motor (MG996R)** providing torque to rotate the hoop
- **Arduino UNO R3** acting as the controller and PWM generator
- **Webcam sensor** for real-time position feedback via image processing
- **Python scripts** for data acquisition and control
- **DC Power Supply** for stable operation

![System Diagram](assets/system_diagram.png)  
*(Example schematic of the Ball and Hoop setup)*

---

## ⚙️ System Architecture

### 🔸 Hardware
- **MG996R Servo Motor** — controlled via PWM signal from Arduino  
- **Arduino UNO R3** — executes PID algorithm and serial communication  
- **Webcam** — captures the ball’s angular position using Python OpenCV  
- **Power Supply** — provides DC voltage to motor and control electronics

### 🔸 Software
- **Python** – for real-time image processing and serial communication  
- **MATLAB/Simulink** – for system identification and controller design  
- **Arduino IDE** – for embedded control implementation  

---

## 📐 Control Design
The plant transfer function was experimentally obtained using MATLAB’s System Identification Toolbox and approximated as a **5th-order system with 2 zeros**, achieving a fit of **78.6%**.

### Implemented PID Tuning Methods:
1. **Ziegler–Nichols (Continuous Oscillation Method)**
2. **FOPDT + IMC (Internal Model Control)**
3. **Comparative analysis** of system performance with P, PI, and PID actions.

| Controller Type | Settling Time (s) | Notes |
|------------------|------------------:|-------|
| Open Loop (Plant) | 10.28 | Slow response |
| P Controller | — | May be unstable |
| PI Controller | 6.38 | Eliminates steady-state error |
| PID Controller | 2.97 | Fastest and most stable response |

---

## 🧠 Key Learnings
- Ziegler–Nichols tuning better captures the system’s **oscillatory dynamics**.
- FOPDT modeling oversimplifies higher-order nonlinearities.
- The **PID controller** yields the best compromise between speed and stability.

---

## 🧰 How to Use
1. **Run image processing** with `imageprocessing.py` to extract angular position from webcam.
2. **Execute Arduino code** to control the servo motor with PID algorithm.
3. **Tune PID gains** in the Python control script (`controller.py`) to observe changes in response.
4. **Analyze results** with MATLAB for root locus and transfer function estimation.

---

## 🧾 References
1. M. Gurtner and J. Zemanek, *Ball in double hoop: Demonstration model for numerical optimal control*, arXiv:1706.07333, 2017.  
2. Arduino Documentation – [Servo Library](https://docs.arduino.cc/libraries/servo/)  
3. MG996R Servo Motor Datasheet – [AllDatasheet](https://www.alldatasheet.com/datasheet-pdf/download/1131873/ETC2/MG996R.html)  
4. Wikipedia – [Lagrangian Mechanics](https://en.wikipedia.org/wiki/Lagrangian_mechanics)

---

## 👨‍🔧 Authors
- **Erhan Alpan**  
- **Muhammed Ahmet Dinç**  
- **Muhammed Furkan Bulut**  
Department of Electrical and Electronics Engineering, METU  

---

## 📜 License
This work is licensed under the  
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

---

## 📎 Full Report
📄 [Download the Ball and Hoop Report (PDF)](Ball%20And%20Hoop.pdf)
