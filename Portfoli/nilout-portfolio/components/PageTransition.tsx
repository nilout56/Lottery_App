"use client";

import { AnimatePresence, motion } from "framer-motion";
import { usePathname } from "next/navigation";
import React from "react";

const PageTransition = ({ children }: { children: React.ReactNode }) => {
  const pathname = usePathname();
  return (
    <AnimatePresence mode="wait">
      <motion.div
        key={pathname}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1, transition: { delay: 0.5, duration: 0.4, ease: "easeInOut" } }}
        exit={{ opacity: 0, transition: { duration: 0.4, ease: "easeInOut" } }}
        className="w-full h-full fixed bg-primary top-0 pointer-events-none z-50"
      />
        <div className="relative z-10">{children}</div>
      
    </AnimatePresence>
  );
};

export default PageTransition;
