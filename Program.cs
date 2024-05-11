using System;
using System.IO;
using System.Reflection;

namespace YNSRC
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Main Program: Started");

            string dllPath = Environment.CurrentDirectory + Path.DirectorySeparatorChar + "library.dll";

            Assembly assembly = Assembly.Load(File.ReadAllBytes(dllPath));

            Type info = assembly.GetType("YNSRC.Starter");

            Console.WriteLine("Main Program: Invoking Method Located in DLL");

            info.GetMethod("Start").Invoke(null, null);
        }
    }
}