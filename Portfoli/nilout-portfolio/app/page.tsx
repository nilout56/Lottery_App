"use client";
import Bubble from "@/components/Bubble";
import { CardHoverEffectDemo } from "@/components/CardHover";
import { HeroHighlightDemo } from "@/components/Highlight";
import ParallaxDemo from "@/components/Parallax";
import Photo from "@/components/Photo";
import { Button } from "@/components/ui/button"
import { motion } from "framer-motion"
import {FiDownload} from "react-icons/fi"
const Home = () => {
  
  return (
    <section className="h-full">
      <div className="container mx-auto h-full">
        <div className="flex flex-col xl:flex-row items-center justify-between xl:pt-8 xl:pb-24">
          <div className="text-center xl:text-left order-2 xl:order-none">
            <span className="text-xl">
              SoftWare Developer
              <h1 className="h1">I'm</h1>
                <span className="h1 text-accent">
                   Nilout Stls
                </span>
            </span>
            <div className="flex flex-col xl:flex-row items-center gap-8 mt-2">
                        <motion.div
                        className="box"
                          whileHover={{ scale: 1.2 }}
                          whileTap={{ scale: 0.9 }}
                          transition={{ type: "spring", stiffness: 400, damping: 17 }}
                        >
                         <a href="/assets/Nilout CV Resume.pdf" download>
                            <Button variant="outline" size="lg" className="uppercase flex items-center gap-2">
                              <span>Download CV</span>
                              <FiDownload />
                            </Button>
                          </a>
                        </motion.div>
              
            </div>
          </div>
          <div className="text-accent order-1 xl:order-none mb-8 xl:mb-0">
            <Photo />
          </div>
          
        </div>
        {/* <div className="relative w-full h-full overflow-hidden flex justify-center items-center">
      <div className="relative flex flex-wrap justify-center items-center w-full h-full">
       <Bubble />
      </div>
    </div> */}
      <div className="relative w-full h-full flex justify-center items-center gap-4" > 
        <ParallaxDemo />
      </div>

      <div>
        <CardHoverEffectDemo />
      </div>

      
      </div>
    
    </section>
  )
}

export default Home
