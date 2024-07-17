"use client";
import {AnimatePresence} from "framer-motion";
import { usePathname } from "next/navigation";
import Stairs from "./Stair";
const StairTransition =()=>{
    const pathname = usePathname();
    return (
        <>
     <AnimatePresence mode="wait">
        <div key={pathname}>
            <div className="w-screen h-screen top-0 left-0 right-0 
            pointer-events-none z-40 flex"> 
            
            <Stairs />
            
            </div>
        </div>
        </AnimatePresence>
      </>
    )
}
export default StairTransition;