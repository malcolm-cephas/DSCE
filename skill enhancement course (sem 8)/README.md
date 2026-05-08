# Skill Enhancement: My Learning Journal

[React Full stack (Web/App development Skills)](<React Full Stack Course>)
## Module 1: Getting my Dev Environment Ready
### January 10th, 2026
I've already been working with HTML for a while, so most of today was just making sure my tools were in order. I already had **VS Code** installed, but I grabbed the **Live Server** extension to help with real-time previews. Set up the root project folder and double-checked that my existing code renders fine in the browser.

---

## Module 2: HTML Refresher & Best Practices
### January 11th, 2026
**Recap:**
Focused on revising the core tags. It was a good reminder regarding **Semantic Elements** (like `article`, `section`) versus non-semantic ones—especially for things like accessibility and SEO which I sometimes overlook.

**Progress Notes:**
- Jumped back into the code and updated the page title.
- Applied some quick inline CSS just to test out changing header colors.

### January 12th, 2026
**Recap:**
Brushed up on **Fonts** and layout structuring. I used `<div>` tags to break up the page and practiced using `<ul>` and `<ol>` for lists. Also made sure I'm using structural tags like `<header>`, `<footer>`, `<nav>`, and `<main>` properly so the code is cleaner.

**Progress Notes:**
- Added a `<style>` block to the head for some basic styling.
- Switched the font to Cambria.
- Partitioned my page into two main divs and gave them background colors to visualize the layout.
- Dropped in some Lorem Ipsum text and adjusted the body margins.
- Finished up through Lesson 3 today.

### January 13th, 2026
**Recap:**
Revision of the anchor tag `<a>` and link attributes. I'm focusing more on using **External CSS** now, even though I've used inline and embedded styles before.

**Progress Notes:**
- Built a fresh HTML page to test out the structure.
- Used `<section>` tags to organize a travel destination list.
- Created a "Book Now" button and messed with some custom font alignment.
- Added some external links (connected Bangalore to Google for testing).
- Designed a passenger form with fields for email, passwords, and name inputs.

### January 14th, 2026
**Recap:**
Working with the `<img>` tag again and looking at semantic tags like `<figure>` and `<figcaption>`. Also tried out some of the interactive tags like `<details>` and `<summary>`.

**Progress Notes:**
- Embedded and styled some images.
- Grouped my images with captions using the figure tags.
- Built a little dropdown info section using `<details>`.
- Messed around with checkboxes and radio buttons—making sure to use the `name` attribute so the selection logic actually works.

---

## Module 3: Diving into CSS3
### January 14th, 2026
**Recap:**
Started the more advanced CSS sections. Focusing on the syntax (selectors, properties, and values) and how much control I actually have over the layout (margins, widths, etc.).

**Progress Notes:**
- Connected an external stylesheet.
- Tried grouping selectors like `h1` and `p` to apply styles in one go.
- **CSS Task:**
    - Built out a full navigation bar.
    - Used the universal selector `*` to reset styles.
    - Grabbed the 'Roboto' font from Google Fonts.
    - Added some borders and padding to make the layout feel less cramped.

### January 15th, 2026
**Recap:**
Learned more about **rem** as a relative unit—definitely better than using pixels for everything. Also started looking at **@keyframes** animations, which are actually pretty fun once you get the timing down.

**Progress Notes:**
- Cleaned up my layout with some border radius and line-height adjustments.
- Stripped away default link underlines and list markers.
- Added some hover effects using pseudo-classes.
- **Animations:**
    - Set up a simple fade-in effect.
    - Added a slide-in animation for my buttons to make them feel more interactive.

---

## Module 4: Working with Bootstrap
### January 16th, 2026
**Recap:**
Experimenting with **Bootstrap**. It's way faster than writing all my layout code from scratch. I just linked the **CDN** and was able to use their predefined classes immediately.

**Progress Notes:**
- Swapped my standard buttons for Bootstrap-styled ones.
- Built out some responsive **Cards** with placeholder text and images.
- Used the Grid system to align my content blocks properly.
- Set up a standard navbar and footer using their components.

---

## Module 5: Starting with React
### January 17th, 2026
**Recap:**
Today was about the environment setup for **React**. Successfully installed **Node.js** and got familiar with **NPM**.

**Progress Notes:**
- Ran `npx create-react-app` to initialize the project.
- Successfully booted up the local server on port 3000.

---

## Module 6: JSX and Components
### January 18th, 2026
**Recap:**
Learning about **JSX** and the component-based architecture. It’s a bit weird mixing HTML-style code directly into the JS at first, but it makes sense now that I've seen how `src` and `public` work together.

**Progress Notes:**
- Cleared out the default React boilerplate.
- Wrote my own custom component with a header and a button list.

### January 19th, 2026
**Recap:**
Focusing on **useState** for handling data and using **map()** to render lists dynamically. Functional components are definitely more straightforward than the old class components.

**Progress Notes:**
- Added a basic state variable for age and displayed it on the page.
- **Project: HR Promotion List**
    - Built a new component called `Promote.js`.
    - Wrote logic to map an employee array into a table.
    - Styled the buttons and table headers to look much more professional.

---

## Module 7: React + Bootstrap
### January 20th, 2026
**Progress Notes:**
- Decided to bring Bootstrap into the React project.
- Mapped my `staff` data array into cards to show how easy it is to build dynamic UI.
- Added images and descriptions to the cards, all being pulled from an array.

---

## Module 8: React Hooks (useEffect)
### January 21st, 2026
**Recap:**
Deep dive into the **useEffect** hook. It’s important to understand the dependency array—leaving it empty `[]` means it only triggers when the component loads.

**Progress Notes:**
- Created a render counter demo to see how the hook handles updates.
- Started working on a side project to list out posts using data fetching.

---

## Module 9: Fetching Data from APIs
### January 22nd, 2026
**Recap:**
Using **fetch** to grab JSON data from the cloud. Working with asynchronous functions can be tricky, but it's essential for any modern app.

**Progress Notes:**
- Hooked up an API endpoint to my `useEffect`.
- Coded some error handling just in case the fetch fails.
- Successfully rendered the JSON data into a clean table structure.
- Implemented a "Delete" button that removes specific rows from the UI.

---

## Module 10: Props & Refs
### January 23rd, 2026
**Recap:**
Learned how to pass data between components using **Props**. Also checked out **useRef**, which is super handy for manipulating input fields directly without triggering a bunch of re-renders.

**Progress Notes:**
- Set up a Parent-Child relationship (`Student` → `Exam`).
- Passed data down through props to fill out a table in the child component.
- Used `useRef` to handle a "Clear Text" feature and automatically refocus the input field.
- Built a quick toggle to enable/disable input fields via buttons.

---

## Module 11: Implementing Search Filters
### January 25th, 2026
**Recap:**
Combined **filter()** and **includes()** to build a functional search bar.

**Progress Notes:**
- Built a customer search tool.
- Wrote the logic to handle case-insensitive searching so the filtering works smoothly regardless of capitalization.

---

## Module 12: Forms and Validation
### January 26th - 27th, 2026
**Recap:**
Working on more complex forms. Used the `useForm` logic to handle inputs and explored using **regex** to validate email addresses.

**Progress Notes:**
- Started the "Flipkart" project.
- Built a login form from scratch.
- Added validation for emails and passwords.
- Added a nice personalized alert that greets the user by name after a successful login.

---

## Module 13: Routing & Final Polish
### January 27th - February 1st, 2026
**Recap:**
Learning **React Router** for navigation and **Conditional Rendering** to switch between different views based on the state.

**Progress Notes:**
- Designed several different views (About, Products, Contact).
- Set up the main navigation logic in the `Shopping` component.
- Added a toggle button that hides or shows extra product details.
- Did a full review of all the code I've written so far to make sure it's clean and readable before moving on.

---

# [Android App Development with Kotlin Essentials](<Android App Development with Kotlin Essentials>)

## Module 1 & 2 : The Basics
### February 6th, 2026
**Recap:**
Moving from React over to **Kotlin**. Learned about the syntax, variable types (`var` vs `val`), and how Kotlin handles null safety (the `?` operator is a lifesaver). It's very different from JS but feels more structured.

**Progress Notes:**
- Got **Eclipse** set up for Kotlin development.
- Wrote the standard "Hello World" and a few basic string print scripts.
- Messed around with null pointer handling to see how the compiler prevents crashes.
- Practiced explicit and implicit variable declarations.

### February 7th, 2026
**Recap:**
Working through the different types of **Operators** today—Arithmetic, Logical, and Bitwise.

**Progress Notes:**
- Wrote a series of programs to test out every operator type.
- Completed Quizzes 9 and 10.

### February 8th, 2026
**Recap:**
Control flow is up next. Learned the Kotlin version of `if-else` and the **when** expression, which is much cleaner than a standard switch statement. Also practiced taking user input with `readLine()`.

**Progress Notes:**
- Built some conditional logic ladders and `when` blocks.
- Practiced different for-loop patterns (`range`, `step`, and `downTo`).
- Tested iterating through strings and collections.
- Used **break** and **continue** with labels to control loop behavior.

## Module 3
### February 20, 2026
   **Recap:**  
Learned about **functions in Kotlin**, which are reusable blocks of code that perform specific tasks and help organize programs.

**Progress Notes:**
- Functions are also called **methods/subroutines** and follow **declaration, definition, and call**.
- Kotlin has **standard functions** like `sqrt()`, `print()`, `rem()`, `toInt()`.
- **User-defined functions** depend on name, return type, and parameters.
- **Unit** means no return value.
- Types learned: **recursive**, **tailrec**, **lambda**, **higher-order**, and **inline** functions.
- Benefits: **modularity, reusability, readability, abstraction**.

**Tasks:**
- Write programs for **simple functions**, **return values**, **recursive functions**, **lambda functions**, and **inline functions**.


## Module 4
### March 3, 2026
**Recap:**  
Introduced **Object-Oriented Programming (OOPS) in Kotlin**, focusing on classes, objects, and ways to organize and protect code.

**Progress Notes:**
- **OOPS** helps support large software projects with better structure.
- Benefits include **data protection, reusability, easier maintenance, security, and code modification**.
- **Class**: a template or blueprint for creating objects.
- **Object**: an instance of a class.
- Learned about **Nested Classes** and the **inner** keyword.
- **Typealias** allows creating alternative names for existing types.
- **Visibility Modifiers** control access: `public`, `private`, `internal`, `protected`.

**Tasks:**
- Completed **Week 6 Quizzes (1 & 2)**.
- Write programs to demonstrate **class**, **nested class**, **typealias**, and **visibility modifiers**.

### 12th March, 2026
**Recap:**  
Learned about **constructors and inheritance in Kotlin**, including how objects are initialized and how classes can inherit properties and functions.

**Progress Notes:**
- **Constructors** initialize object values when an object is created.
- **Primary constructor** is declared in the class header and cannot contain initialization logic.
- **Secondary constructor** allows additional initialization logic.
- **Class functions** are also called **methods**.
- **Inheritance** lets a class derive from another class (child/subclass from parent).
- **Any** is the superclass of all Kotlin classes.
- Classes, functions, or variables must be marked **`open`** to allow inheritance/overriding.
- **Method overriding** lets a subclass change parent behavior.
- **`final`** prevents further overriding.
- **Initialization order** runs from **base class → derived class**.
- Subclasses can **access superclass members**.

**Tasks:**
- Write programs to demonstrate **constructors**.
- Show **primary and secondary constructors**.
- Demonstrate **class functions with and without arguments**.
- Write programs for **inheritance**, **overriding**, **derived class initialization**, and **accessing superclass members**.