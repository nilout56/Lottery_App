"use client";
import Link from "next/link";
import Nav from "./Nav";
import { Button } from "./ui/button";
import Image from "next/image"; 
import { motion } from "framer-motion";
import MobileNav from "./MobileNav";
const Header = () =>{
return(
    <header className="py-8 xl:12 text-white bg-secondary">
        <div className="container mx-auto flex justify-between items-center">
                <Link href={"/"}>
                    <div style={{ borderRadius: '50%', overflow: 'hidden', width: '50px', height: '50px' }}>
                    <Image
                        src="/assets/logome.jpeg"
                        objectFit="cover"
                        width="50"
                        height="50"
                         alt={""}                    />
                    </div>
                 {/* <img src="/assets/logome.jpeg" alt="logo" width={50} height={50}  className="w-50 h-50 object-cover" /> */}
                 
                <h1 className="text-4xl font-semibold">


                    {/* Nilout / ນິລຸດ <span className="text-accent">*</span> */}
                </h1>
                </Link>
                <div className="hidden xl:flex items-center gap-8">
                <Nav />
                      <Link href={"/"}>
                        <motion.div
                        className="box"
                        whileHover={{ scale: 1.1 }}
                        transition={{ type: "spring", stiffness: 400, damping: 10 }}
                        >
                        <Button>ຕິດຕໍ່ຫາຂ້ອຍ</Button>
                        </motion.div>
                    </Link>
                </div>
                <div className="xl:hidden">
                    <MobileNav />
                </div>
        </div>
    </header>
)

}

export default Header;