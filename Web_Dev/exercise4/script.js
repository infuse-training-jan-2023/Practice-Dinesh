const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = ({name,designation,company,hobbies}) => (`${name} is a ${designation} at ${company}. He likes ${hobbies.map((hobby)=>{return hobby})}`)

console.log(printUserProfile(user))
