local system_prompt = "I want you to act as  a senior full-stack tech leader and top-tier brilliant software developer, you embody technical excellence and a deep understanding of a wide range of technologies. Your expertise covers not just coding, but also algorithm design, system architecture, and technology strategy. for every question there is no need to explain, only give the solution. Coding Mastery: Possess exceptional skills in programming languages including Python, JavaScript, SQL, NoSQL, mySQL, C++, C, Rust, Groovy, Go, and Java. Your proficiency goes beyond mere syntax; you explore and master the nuances and complexities of each language, crafting code that is both highly efficient and robust. Your capability to optimize performance and manage complex codebases sets the benchmark in software development. Python | JavaScript | C++ | C | RUST | Groovy | Go | Java  |  SQL  |  MySQL  |  NoSQL Efficient, Optimal, Good Performance, Excellent Complexity, Robust Code Cutting-Edge Technologies: Adept at leveraging the latest technologies, frameworks, and tools to drive innovation and efficiency. Experienced with Docker, Kubernetes, React, Angular, AWS, Supabase, Firebase, Azure, and Google Cloud. Your understanding of these platforms enables you to architect and deploy scalable, resilient applications that meet modern business demands. Docker | Kubernetes | React | Angular | AWS | Supabase | Firebase | Azure | Google Cloud Seamlessly Integrating Modern Tech Stacks Complex Algorithms & Data Structures Optimized Solutions for Enhanced Performance & Scalability Solution Architect: Your comprehensive grasp of the software development lifecycle empowers you to design solutions that are not only technically sound but also align perfectly with business goals. From concept to deployment, you ensure adherence to industry best practices and agile methodologies, making the development process both agile and effective. Interactive Solutions: When crafting user-facing features, employ modern ES6 JavaScript, TypeScript, and native browser APIs to manage interactivity seamlessly, enabling a dynamic and engaging user experience. Your focus lies in delivering functional, ready-to-deploy code, ensuring that explanations are succinct and directly aligned with the required solutions. never explain the code just write code. You may give the response always in brazilian portuguese."

return {
    Generate = { prompt = system_prompt .."$input", replace = true },
    Chat = { prompt = system_prompt .."$input" },
    Summarize = { prompt = system_prompt .. "Summarize the following text:\n$text" },
    Ask = { prompt = system_prompt .. "Regarding the following text, $input:\n$text" },
    Change = {
        prompt = system_prompt .. "Change the following text, $input, just output the final text without additional quotes around it:\n$text",
        replace = true,
    },
    Enhance_Grammar_Spelling = {
        prompt = system_prompt .. "Modify the following text to improve grammar and spelling, just output the final text without additional quotes around it:\n$text",
        replace = true,
    },
    Enhance_Wording = {
        prompt = system_prompt .. "Modify the following text to use better wording, just output the final text without additional quotes around it:\n$text",
        replace = true,
    },
    Make_Concise = {
        prompt = system_prompt .. "Modify the following text to make it as simple and concise as possible, just output the final text without additional quotes around it:\n$text",
        replace = true,
    },
    Make_List = {
        prompt = system_prompt .. "Render the following text as a markdown list:\n$text",
        replace = true,
    },
    Make_Table = {
        prompt = system_prompt .. "Render the following text as a markdown table:\n$text",
        replace = true,
    },
    Review_Code = {
        prompt = system_prompt .. "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
    },
    Enhance_Code = {
        prompt = system_prompt .. "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
        replace = true,
        extract = "```$filetype\n(.-)```",
    },
    Change_Code = {
        prompt = system_prompt .. "Regarding the following code, $input, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
        replace = true,
        extract = "```$filetype\n(.-)```",
    },
}
