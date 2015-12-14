using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyLibrary
{
    public class Logika
    {
        /// <summary>
        /// Ha a szoveg hossza nem egyenlő hossz értékével akkor false a visszatérési érték, egyébként true.
        /// </summary>
        /// <param name="szoveg"></param>
        /// <param name="hossz"></param>
        /// <returns></returns>
        public bool SzovegHosszEllenorzes(string szoveg, int hossz)
        {
            if (szoveg.Length == hossz)
                return true;
            return false;
        }

        /// <summary>
        /// Visszaadja az aktuális félévet stringben (év félév) formában
        /// </summary>
        /// <returns>
        /// Egy olyan string ami 2 adat összefűzése:
        /// Az aktuális év + I ha az aktuális hónap 6 vagy kisebb és II ha nagyobb
        /// </returns>
        public string AktualisFelev()
        {
            string ev = DateTime.Now.Year.ToString();
            string felev = DateTime.Now.Month <= 6 ? "I" : "II";
            return ev + " " + felev;
        }

        /// <summary>
        /// Visszaadja a következő félévet stringben (év félév) formában
        /// </summary>
        /// <returns>
        /// Egy olyan string ami 2 adat összefűzése:
        /// Ha az aktuális hónap 6 vagy kisebb akkor az aktuális év + II
        /// Ha az aktuális hónap 6-nál nagyobb akkor az aktuális év+1 + I
        /// </returns>
        public string KovetkezoFelev()
        {
            int aktualisev = DateTime.Now.Year;
            int aktualisfelev = DateTime.Now.Month <= 6 ? 1 : 2;

            if (aktualisfelev == 1)
                return aktualisev + " " + "II";
            return aktualisev + 1 + " " + "I";
        }

        private static Logika instance;

        private Logika() { }

        public static Logika GetInstance()
        {
            if (instance == null)
                instance = new Logika();
            return instance;
        }
    }
}
