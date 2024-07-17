"use client";
import { Sheet,SheetContent,SheetTrigger } from "./ui/sheet";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion } from "framer-motion";
import {CiMenuFries} from "react-icons/ci"
import { DialogContent } from "@radix-ui/react-dialog";
const links = [
    {
        name: "Home",
        path: "/"
    },
    {
        name: "My Awards",
        path: "/award"
    },
    {
        name: "My Projects",
        path: "/projects"
    },
    {
        name: "Contact",
        path: "/contact"
    },
];
const MobileNav = () =>{
    const pathname = usePathname();
    console.log(pathname)
    return (
    <Sheet>
        <SheetTrigger className="flex justify-center items-center">
            <CiMenuFries className="text-[32px] text-accent" />
        </SheetTrigger>
        <SheetContent className="flex flex-col">
            <div className="mt-32 mb-40 text-center text-2xl">
                <Link href={"/"}>
                <h1 className="text-4xl font-semibold">Nilout</h1>
                </Link>
            </div>
            <nav className="flex flex-col gap-4 justify-center items-center">
          {links.map((link,index)=> {
            return <motion.div
             key={link.path} 
                        className="box"
                        whileHover={{ scale: 1.1 }}
                        transition={{ type: "spring", stiffness: 400, damping: 10 }}
                        >
            <Link 
                href={link.path} 
                key={index} 
                className={`${link.path === pathname && "text-accent border-b-2 border-accent"}
                capitalize font-medium hover:text-accent transition-all`}>
                {link.name}
                
            </Link>
            </motion.div>
          })}
        </nav>
            
        </SheetContent>
    </Sheet>
    )
}
export default MobileNav;