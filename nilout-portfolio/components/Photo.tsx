"use client";
import {motion} from "framer-motion"
import Image from "next/image";




const Photo = () => {
    const logos = [
    "/assets/dart.png",
    "/assets/flutter.png",
    "/assets/firebase.png",
    "/assets/git.png",
    "/assets/graphql.png",
    "/assets/javascripts.png",
    "/assets/postgresql.png",
    "/assets/nuxt.png",
    "/assets/vue.png",
    "/assets/nextjs.png",
  ];
    const angleStep = 360 / logos.length;
  return (
    <div className="w-full h-full relative">
      <motion.div>
        <div className="w-[298px] h-[298px] xl:w-[498px] xl:h-[498px] faded faded-bottom  absolute">
            <Image src="/assets/nilout1.png"  alt="" priority quality={100} fill className="object-contain " />

          
        </div>

      </motion.div>
      <motion.svg className="w-[300px] xl:w-[506px] h-[300px] xl:h-[506px]" fill="transparent" viewBox="0 0 506 506" xmlns="http://www.w3.org/2000/svg"  animate={{ rotate: [0, 20, 120, 240, 0], }}  transition={{ duration: 50, repeat:Infinity,repeatType:"reverse"}}>
        {logos.map((logo, index) => (
          <motion.image
            key={index}
            href={logo}
            width="50"
            height="50"
            
            x="50%"
            y="50%"
            transform={`rotate(${angleStep * index}, 253, 253) translate(0, -250)`}
            // initial={{ opacity: 0 }}
            
           
          />
        ))}
        <motion.circle  cx="253" cy="253" r="250" stroke="#00ff99" strokeWidth="4" strokeLinecap="round" strokeLinejoin="round" initial={{strokeDasharray:"24 10 0 0"}} animate={{strokeDasharray:["10 110 25 25","14 25 92 72","4 250 22 22"],rotate:[180,360]}} transition={{duration:20,repeat:Infinity,repeatType:"reverse"}}/>
        <motion.circle  cx="253" cy="253" r="250" stroke="#e3e3e3" strokeWidth="4" strokeLinecap="round" strokeLinejoin="round" initial={{strokeDasharray:"24 10 0 0"}} animate={{strokeDasharray:["15 120 25 25","16 25 92 72","4 250 22 22"],rotate:[120,360]}} transition={{duration:20,repeat:Infinity,repeatType:"reverse"}}/>
      </motion.svg>
    </div>
  )
}

export default Photo
