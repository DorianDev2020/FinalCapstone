﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Capstone.Models
{
    public class Contractor
    {
        [Key]
        public int ContractorId { get; set; }
        public string BusinessName { get; set; }
        
    }
}
