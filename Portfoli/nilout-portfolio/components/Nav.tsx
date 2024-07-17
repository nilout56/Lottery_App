"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion } from "framer-motion";
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
const Nav = () =>{
    const pathname = usePathname();
    console.log(pathname)
    return (
        <nav className="flex gap-8">
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
    )
}
export default Nav;