#' Return the sequences given genes
#'
#' @description This function is for the neoantigens project.
#' We call it with a gene.
#'
#' @param gene string
#' @return A dna sequence as a string
#' @export
#' @examples
#' get_gene_seq("brca1")
#' @references
#' \url{https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html}
#' @author Rachel Alcraft, \url{https://github.com/instituteofcancerresearch/r-reversions}


get_gene_seq <- function(gene) {
  seq <- get_seq(gene)
  seq <- gsub("\n", "", seq)
  seq <- gsub(" ", "", seq)
  return(seq)
}

get_seq <- function(gene) {
  gene <- tolower(gene)
  if (gene == "test1") {
    return("aaaaaaaaaaaaaaaaaaaaagaagtagtagtaggtaggaaaaaaaaaaaaaaaaaaaaaaaa")
  } else if (gene == "test2") {
    return("cccaaaaaggaaaaaaaaaaa")
  } else if (gene == "test3") {    
    return("aaatttaaatttaaattt")
  } else if (gene == "brca1") {
    return("atggatttatctgctcttcgcgttgaagaagtacaaaatgtcattaatgctatgcagaaaatcttag
    agtgtcccatctgtctggagttgatcaaggaacctgtctccacaaagtgtgaccacatattttgcaaattttgcat
    gctgaaacttctcaaccagaagaaagggccttcacagtgtcctttatgtaagaatgatataaccaaaaggagccta
    caagaaagtacgagatttagtcaacttgttgaagagctattgaaaatcatttgtgcttttcagcttgacacaggtt
    tggagtatgcaaacagctataattttgcaaaaaaggaaaataactctcctgaacatctaaaagatgaagtttctat
    catccaaagtatgggctacagaaaccgtgccaaaagacttctacagagtgaacccgaaaatccttccttgcaggaa
    accagtctcagtgtccaactctctaaccttggaactgtgagaactctgaggacaaagcagcggatacaacctcaaa
    agacgtctgtctacattgaattgggatctgattcttctgaagataccgttaataaggcaacttattgcagtgtggg
    agatcaagaattgttacaaatcacccctcaaggaaccagggatgaaatcagtttggattctgcaaaaaaggctgct
    tgtgaattttctgagacggatgtaacaaatactgaacatcatcaacccagtaataatgatttgaacaccactgaga
    agcgtgcagctgagaggcatccagaaaagtatcagggtagttctgtttcaaacttgcatgtggagccatgtggcac
    aaatactcatgccagctcattacagcatgagaacagcagtttattactcactaaagacagaatgaatgtagaaaag
    gctgaattctgtaataaaagcaaacagcctggcttagcaaggagccaacataacagatgggctggaagtaaggaaa
    catgtaatgataggcggactcccagcacagaaaaaaaggtagatctgaatgctgatcccctgtgtgagagaaaaga
    atggaataagcagaaactgccatgctcagagaatcctagagatactgaagatgttccttggataacactaaatagc
    agcattcagaaagttaatgagtggttttccagaagtgatgaactgttaggttctgatgactcacatgatggggagt
    ctgaatcaaatgccaaagtagctgatgtattggacgttctaaatgaggtagatgaatattctggttcttcagagaa
    aatagacttactggccagtgatcctcatgaggctttaatatgtaaaagtgaaagagttcactccaaatcagtagag
    agtaatattgaagacaaaatatttgggaaaacctatcggaagaaggcaagcctccccaacttaagccatgtaactg
    aaaatctaattataggagcatttgttactgagccacagataatacaagagcgtcccctcacaaataaattaaagcg
    taaaaggagacctacatcaggccttcatcctgaggattttatcaagaaagcagatttggcagttcaaaagactcct
    gaaatgataaatcagggaactaaccaaacggagcagaatggtcaagtgatgaatattactaatagtggtcatgaga
    ataaaacaaaaggtgattctattcagaatgagaaaaatcctaacccaatagaatcactcgaaaaagaatctgcttt
    caaaacgaaagctgaacctataagcagcagtataagcaatatggaactcgaattaaatatccacaattcaaaagca
    cctaaaaagaataggctgaggaggaagtcttctaccaggcatattcatgcgcttgaactagtagtcagtagaaatc
    taagcccacctaattgtactgaattgcaaattgatagttgttctagcagtgaagagataaagaaaaaaaagtacaa
    ccaaatgccagtcaggcacagcagaaacctacaactcatggaaggtaaagaacctgcaactggagccaagaagagt
    aacaagccaaatgaacagacaagtaaaagacatgacagcgatactttcccagagctgaagttaacaaatgcacctg
    gttcttttactaagtgttcaaataccagtgaacttaaagaatttgtcaatcctagccttccaagagaagaaaaaga
    agagaaactagaaacagttaaagtgtctaataatgctgaagaccccaaagatctcatgttaagtggagaaagggtt
    ttgcaaactgaaagatctgtagagagtagcagtatttcattggtacctggtactgattatggcactcaggaaagta
    tctcgttactggaagttagcactctagggaaggcaaaaacagaaccaaataaatgtgtgagtcagtgtgcagcatt
    tgaaaaccccaagggactaattcatggttgttccaaagataatagaaatgacacagaaggctttaagtatccattg
    ggacatgaagttaaccacagtcgggaaacaagcatagaaatggaagaaagtgaacttgatgctcagtatttgcaga
    atacattcaaggtttcaaagcgccagtcatttgctccgttttcaaatccaggaaatgcagaagaggaatgtgcaac
    attctctgcccactctgggtccttaaagaaacaaagtccaaaagtcacttttgaatgtgaacaaaaggaagaaaat
    caaggaaagaatgagtctaatatcaagcctgtacagacagttaatatcactgcaggctttcctgtggttggtcaga
    aagataagccagttgataatgccaaatgtagtatcaaaggaggctctaggttttgtctatcatctcagttcagagg
    caacgaaactggactcattactccaaataaacatggacttttacaaaacccatatcgtataccaccactttttccc
    atcaagtcatttgttaaaactaaatgtaagaaaaatctgctagaggaaaactttgaggaacattcaatgtcacctg
    aaagagaaatgggaaatgagaacattccaagtacagtgagcacaattagccgtaataacattagagaaaatgtttt
    taaagaagccagctcaagcaatattaatgaagtaggttccagtactaatgaagtgggctccagtattaatgaaata
    ggttccagtgatgaaaacattcaagcagaactaggtagaaacagagggccaaaattgaatgctatgcttagattag
    gggttttgcaacctgaggtctataaacaaagtcttcctggaagtaattgtaagcatcctgaaataaaaaagcaaga
    atatgaagaagtagttcagactgttaatacagatttctctccatatctgatttcagataacttagaacagcctatg
    ggaagtagtcatgcatctcaggtttgttctgagacacctgatgacctgttagatgatggtgaaataaaggaagata
    ctagttttgctgaaaatgacattaaggaaagttctgctgtttttagcaaaagcgtccagaaaggagagcttagcag
    gagtcctagccctttcacccatacacatttggctcagggttaccgaagaggggccaagaaattagagtcctcagaa
    gagaacttatctagtgaggatgaagagcttccctgcttccaacacttgttatttggtaaagtaaacaatatacctt
    ctcagtctactaggcatagcaccgttgctaccgagtgtctgtctaagaacacagaggagaatttattatcattgaa
    gaatagcttaaatgactgcagtaaccaggtaatattggcaaaggcatctcaggaacatcaccttagtgaggaaaca
    aaatgttctgctagcttgttttcttcacagtgcagtgaattggaagacttgactgcaaatacaaacacccaggatc
    ctttcttgattggttcttccaaacaaatgaggcatcagtctgaaagccagggagttggtctgagtgacaaggaatt
    ggtttcagatgatgaagaaagaggaacgggcttggaagaaaataatcaagaagagcaaagcatggattcaaactta
    ggtgaagcagcatctgggtgtgagagtgaaacaagcgtctctgaagactgctcagggctatcctctcagagtgaca
    ttttaaccactcagcagagggataccatgcaacataacctgataaagctccagcaggaaatggctgaactagaagc
    tgtgttagaacagcatgggagccagccttctaacagctacccttccatcataagtgactcttctgcccttgaggac
    ctgcgaaatccagaacaaagcacatcagaaaaagcagtattaacttcacagaaaagtagtgaataccctataagcc
    agaatccagaaggcctttctgctgacaagtttgaggtgtctgcagatagttctaccagtaaaaataaagaaccagg
    agtggaaaggtcatccccttctaaatgcccatcattagatgataggtggtacatgcacagttgctctgggagtctt
    cagaatagaaactacccatctcaagaggagctcattaaggttgttgatgtggaggagcaacagctggaagagtctg
    ggccacacgatttgacggaaacatcttacttgccaaggcaagatctagagggaaccccttacctggaatctggaat
    cagcctcttctctgatgaccctgaatctgatccttctgaagacagagccccagagtcagctcgtgttggcaacata
    ccatcttcaacctctgcattgaaagttccccaattgaaagttgcagaatctgcccagagtccagctgctgctcata
    ctactgatactgctgggtataatgcaatggaagaaagtgtgagcagggagaagccagaattgacagcttcaacaga
    aagggtcaacaaaagaatgtccatggtggtgtctggcctgaccccagaagaatttatgctcgtgtacaagtttgcc
    agaaaacaccacatcactttaactaatctaattactgaagagactactcatgttgttatgaaaacagatgctgagt
    ttgtgtgtgaacggacactgaaatattttctaggaattgcgggaggaaaatgggtagttagctatttctgggtgac
    ccagtctattaaagaaagaaaaatgctgaatgagcatgattttgaagtcagaggagatgtggtcaatggaagaaac
    caccaaggtccaaagcgagcaagagaatcccaggacagaaagatcttcagggggctagaaatctgttgctatgggc
    ccttcaccaacatgcccacagatcaactggaatggatggtacagctgtgtggtgcttctgtggtgaaggagctttc
    atcattcacccttggcacaggtgtccacccaattgtggttgtgcagccagatgcctggacagaggacaatggcttc
    catgcaattgggcagatgtgtgaggcacctgtggtgacccgagagtgggtgttggacagtgtagcactctaccagt
    gccaggagctggacacctacctgataccccagatcccccacagccactac")
  } else if (gene == "brca2") {
    return("atgcctattggatccaaagagaggccaacattttttgaaatttttaagacacgctgcaacaaagcaga
    tttaggaccaataagtcttaattggtttgaagaactttcttcagaagctccaccctataattctgaacctgcagaa
    gaatctgaacataaaaacaacaattacgaaccaaacctatttaaaactccacaaaggaaaccatcttataatcagc
    tggcttcaactccaataatattcaaagagcaagggctgactctgccgctgtaccaatctcctgtaaaagaattaga
    taaattcaaattagacttaggaaggaatgttcccaatagtagacataaaagtcttcgcacagtgaaaactaaaatg
    gatcaagcagatgatgtttcctgtccacttctaaattcttgtcttagtgaaagtcctgttgttctacaatgtacac
    atgtaacaccacaaagagataagtcagtggtatgtgggagtttgtttcatacaccaaagtttgtgaagggtcgtca
    gacaccaaaacatatttctgaaagtctaggagctgaggtggatcctgatatgtcttggtcaagttctttagctaca
    ccacccacccttagttctactgtgctcatagtcagaaatgaagaagcatctgaaactgtatttcctcatgatacta
    ctgctaatgtgaaaagctatttttccaatcatgatgaaagtctgaagaaaaatgatagatttatcgcttctgtgac
    agacagtgaaaacacaaatcaaagagaagctgcaagtcatggatttggaaaaacatcagggaattcatttaaagta
    aatagctgcaaagaccacattggaaagtcaatgccaaatgtcctagaagatgaagtatatgaaacagttgtagata
    cctctgaagaagatagtttttcattatgtttttctaaatgtagaacaaaaaatctacaaaaagtaagaactagcaa
    gactaggaaaaaaattttccatgaagcaaacgctgatgaatgtgaaaaatctaaaaaccaagtgaaagaaaaatac
    tcatttgtatctgaagtggaaccaaatgatactgatccattagattcaaatgtagcaaatcagaagccctttgaga
    gtggaagtgacaaaatctccaaggaagttgtaccgtctttggcctgtgaatggtctcaactaaccctttcaggtct
    aaatggagcccagatggagaaaatacccctattgcatatttcttcatgtgaccaaaatatttcagaaaaagaccta
    ttagacacagagaacaaaagaaagaaagattttcttacttcagagaattctttgccacgtatttctagcctaccaa
    aatcagagaagccattaaatgaggaaacagtggtaaataagagagatgaagagcagcatcttgaatctcatacaga
    ctgcattcttgcagtaaagcaggcaatatctggaacttctccagtggcttcttcatttcagggtatcaaaaagtct
    atattcagaataagagaatcacctaaagagactttcaatgcaagtttttcaggtcatatgactgatccaaacttta
    aaaaagaaactgaagcctctgaaagtggactggaaatacatactgtttgctcacagaaggaggactccttatgtcc
    aaatttaattgataatggaagctggccagccaccaccacacagaattctgtagctttgaagaatgcaggtttaata
    tccactttgaaaaagaaaacaaataagtttatttatgctatacatgatgaaacatcttataaaggaaaaaaaatac
    cgaaagaccaaaaatcagaactaattaactgttcagcccagtttgaagcaaatgcttttgaagcaccacttacatt
    tgcaaatgctgattcaggtttattgcattcttctgtgaaaagaagctgttcacagaatgattctgaagaaccaact
    ttgtccttaactagctcttttgggacaattctgaggaaatgttctagaaatgaaacatgttctaataatacagtaa
    tctctcaggatcttgattataaagaagcaaaatgtaataaggaaaaactacagttatttattaccccagaagctga
    ttctctgtcatgcctgcaggaaggacagtgtgaaaatgatccaaaaagcaaaaaagtttcagatataaaagaagag
    gtcttggctgcagcatgtcacccagtacaacattcaaaagtggaatacagtgatactgactttcaatcccagaaaa
    gtcttttatatgatcatgaaaatgccagcactcttattttaactcctacttccaaggatgttctgtcaaacctagt
    catgatttctagaggcaaagaatcatacaaaatgtcagacaagctcaaaggtaacaattatgaatctgatgttgaa
    ttaaccaaaaatattcccatggaaaagaatcaagatgtatgtgctttaaatgaaaattataaaaacgttgagctgt
    tgccacctgaaaaatacatgagagtagcatcaccttcaagaaaggtacaattcaaccaaaacacaaatctaagagt
    aatccaaaaaaatcaagaagaaactacttcaatttcaaaaataactgtcaatccagactctgaagaacttttctca
    gacaatgagaataattttgtcttccaagtagctaatgaaaggaataatcttgctttaggaaatactaaggaacttc
    atgaaacagacttgacttgtgtaaacgaacccattttcaagaactctaccatggttttatatggagacacaggtga
    taaacaagcaacccaagtgtcaattaaaaaagatttggtttatgttcttgcagaggagaacaaaaatagtgtaaag
    cagcatataaaaatgactctaggtcaagatttaaaatcggacatctccttgaatatagataaaataccagaaaaaa
    ataatgattacatgaacaaatgggcaggactcttaggtccaatttcaaatcacagttttggaggtagcttcagaac
    agcttcaaataaggaaatcaagctctctgaacataacattaagaagagcaaaatgttcttcaaagatattgaagaa
    caatatcctactagtttagcttgtgttgaaattgtaaataccttggcattagataatcaaaagaaactgagcaagc
    ctcagtcaattaatactgtatctgcacatttacagagtagtgtagttgtttctgattgtaaaaatagtcatataac
    ccctcagatgttattttccaagcaggattttaattcaaaccataatttaacacctagccaaaaggcagaaattaca
    gaactttctactatattagaagaatcaggaagtcagtttgaatttactcagtttagaaaaccaagctacatattgc
    agaagagtacatttgaagtgcctgaaaaccagatgactatcttaaagaccacttctgaggaatgcagagatgctga
    tcttcatgtcataatgaatgccccatcgattggtcaggtagacagcagcaagcaatttgaaggtacagttgaaatt
    aaacggaagtttgctggcctgttgaaaaatgactgtaacaaaagtgcttctggttatttaacagatgaaaatgaag
    tggggtttaggggcttttattctgctcatggcacaaaactgaatgtttctactgaagctctgcaaaaagctgtgaa
    actgtttagtgatattgagaatattagtgaggaaacttctgcagaggtacatccaataagtttatcttcaagtaaa
    tgtcatgattctgttgtttcaatgtttaagatagaaaatcataatgataaaactgtaagtgaaaaaaataataaat
    gccaactgatattacaaaataatattgaaatgactactggcacttttgttgaagaaattactgaaaattacaagag
    aaatactgaaaatgaagataacaaatatactgctgccagtagaaattctcataacttagaatttgatggcagtgat
    tcaagtaaaaatgatactgtttgtattcataaagatgaaacggacttgctatttactgatcagcacaacatatgtc
    ttaaattatctggccagtttatgaaggagggaaacactcagattaaagaagatttgtcagatttaacttttttgga
    agttgcgaaagctcaagaagcatgtcatggtaatacttcaaataaagaacagttaactgctactaaaacggagcaa
    aatataaaagattttgagacttctgatacattttttcagactgcaagtgggaaaaatattagtgtcgccaaagagt
    catttaataaaattgtaaatttctttgatcagaaaccagaagaattgcataacttttccttaaattctgaattaca
    ttctgacataagaaagaacaaaatggacattctaagttatgaggaaacagacatagttaaacacaaaatactgaaa
    gaaagtgtcccagttggtactggaaatcaactagtgaccttccagggacaacccgaacgtgatgaaaagatcaaag
    aacctactctattgggttttcatacagctagcgggaaaaaagttaaaattgcaaaggaatctttggacaaagtgaa
    aaacctttttgatgaaaaagagcaaggtactagtgaaatcaccagttttagccatcaatgggcaaagaccctaaag
    tacagagaggcctgtaaagaccttgaattagcatgtgagaccattgagatcacagctgccccaaagtgtaaagaaa
    tgcagaattctctcaataatgataaaaaccttgtttctattgagactgtggtgccacctaagctcttaagtgataa
    tttatgtagacaaactgaaaatctcaaaacatcaaaaagtatctttttgaaagttaaagtacatgaaaatgtagaa
    aaagaaacagcaaaaagtcctgcaacttgttacacaaatcagtccccttattcagtcattgaaaattcagccttag
    ctttttacacaagttgtagtagaaaaacttctgtgagtcagacttcattacttgaagcaaaaaaatggcttagaga
    aggaatatttgatggtcaaccagaaagaataaatactgcagattatgtaggaaattatttgtatgaaaataattca
    aacagtactatagctgaaaatgacaaaaatcatctctccgaaaaacaagatacttatttaagtaacagtagcatgt
    ctaacagctattcctaccattctgatgaggtatataatgattcaggatatctctcaaaaaataaacttgattctgg
    tattgagccagtattgaagaatgttgaagatcaaaaaaacactagtttttccaaagtaatatccaatgtaaaagat
    gcaaatgcatacccacaaactgtaaatgaagatatttgcgttgaggaacttgtgactagctcttcaccctgcaaaa
    ataaaaatgcagccattaaattgtccatatctaatagtaataattttgaggtagggccacctgcatttaggatagc
    cagtggtaaaatcgtttgtgtttcacatgaaacaattaaaaaagtgaaagacatatttacagacagtttcagtaaa
    gtaattaaggaaaacaacgagaataaatcaaaaatttgccaaacgaaaattatggcaggttgttacgaggcattgg
    atgattcagaggatattcttcataactctctagataatgatgaatgtagcacgcattcacataaggtttttgctga
    cattcagagtgaagaaattttacaacataaccaaaatatgtctggattggagaaagtttctaaaatatcaccttgt
    gatgttagtttggaaacttcagatatatgtaaatgtagtatagggaagcttcataagtcagtctcatctgcaaata
    cttgtgggatttttagcacagcaagtggaaaatctgtccaggtatcagatgcttcattacaaaacgcaagacaagt
    gttttctgaaatagaagatagtaccaagcaagtcttttccaaagtattgtttaaaagtaacgaacattcagaccag
    ctcacaagagaagaaaatactgctatacgtactccagaacatttaatatcccaaaaaggcttttcatataatgtgg
    taaattcatctgctttctctggatttagtacagcaagtggaaagcaagtttccattttagaaagttccttacacaa
    agttaagggagtgttagaggaatttgatttaatcagaactgagcatagtcttcactattcacctacgtctagacaa
    aatgtatcaaaaatacttcctcgtgttgataagagaaacccagagcactgtgtaaactcagaaatggaaaaaacct
    gcagtaaagaatttaaattatcaaataacttaaatgttgaaggtggttcttcagaaaataatcactctattaaagt
    ttctccatatctctctcaatttcaacaagacaaacaacagttggtattaggaaccaaagtgtcacttgttgagaac
    attcatgttttgggaaaagaacaggcttcacctaaaaacgtaaaaatggaaattggtaaaactgaaactttttctg
    atgttcctgtgaaaacaaatatagaagtttgttctacttactccaaagattcagaaaactactttgaaacagaagc
    agtagaaattgctaaagcttttatggaagatgatgaactgacagattctaaactgccaagtcatgccacacattct
    ctttttacatgtcccgaaaatgaggaaatggttttgtcaaattcaagaattggaaaaagaagaggagagcccctta
    tcttagtgggagaaccctcaatcaaaagaaacttattaaatgaatttgacaggataatagaaaatcaagaaaaatc
    cttaaaggcttcaaaaagcactccagatggcacaataaaagatcgaagattgtttatgcatcatgtttctttagag
    ccgattacctgtgtaccctttcgcacaactaaggaacgtcaagagatacagaatccaaattttaccgcacctggtc
    aagaatttctgtctaaatctcatttgtatgaacatctgactttggaaaaatcttcaagcaatttagcagtttcagg
    acatccattttatcaagtttctgctacaagaaatgaaaaaatgagacacttgattactacaggcagaccaaccaaa
    gtctttgttccaccttttaaaactaaatcacattttcacagagttgaacagtgtgttaggaatattaacttggagg
    aaaacagacaaaagcaaaacattgatggacatggctctgatgatagtaaaaataagattaatgacaatgagattca
    tcagtttaacaaaaacaactccaatcaagcagtagctgtaactttcacaaagtgtgaagaagaacctttagattta
    attacaagtcttcagaatgccagagatatacaggatatgcgaattaagaagaaacaaaggcaacgcgtctttccac
    agccaggcagtctgtatcttgcaaaaacatccactctgcctcgaatctctctgaaagcagcagtaggaggccaagt
    tccctctgcgtgttctcataaacagctgtatacgtatggcgtttctaaacattgcataaaaattaacagcaaaaat
    gcagagtcttttcagtttcacactgaagattattttggtaaggaaagtttatggactggaaaaggaatacagttgg
    ctgatggtggatggctcataccctccaatgatggaaaggctggaaaagaagaattttatagggctctgtgtgacac
    tccaggtgtggatccaaagcttatttctagaatttgggtttataatcactatagatggatcatatggaaactggca
    gctatggaatgtgcctttcctaaggaatttgctaatagatgcctaagcccagaaagggtgcttcttcaactaaaat
    acagatatgatacggaaattgatagaagcagaagatcggctataaaaaagataatggaaagggatgacacagctgc
    aaaaacacttgttctctgtgtttctgacataatttcattgagcgcaaatatatctgaaacttctagcaataaaact
    agtagtgcagatacccaaaaagtggccattattgaacttacagatgggtggtatgctgttaaggcccagttagatc
    ctcccctcttagctgtcttaaagaatggcagactgacagttggtcagaagattattcttcatggagcagaactggt
    gggctctcctgatgcctgtacacctcttgaagccccagaatctcttatgttaaagatttctgctaacagtactcgg
    cctgctcgctggtataccaaacttggattctttcctgaccctagaccttttcctctgcccttatcatcgcttttca
    gtgatggaggaaatgttggttgtgttgatgtaattattcaaagagcataccctatacagtggatggagaagacatc
    atctggattatacatatttcgcaatgaaagagaggaagaaaaggaagcagcaaaatatgtggaggcccaacaaaag
    agactagaagccttattcactaaaattcaggaggaatttgaagaacatgaagaaaacacaacaaaaccatatttac
    catcacgtgcactaacaagacagcaagttcgtgctttgcaagatggtgcagagctttatgaagcagtgaagaatgc
    agcagacccagcttaccttgagggttatttcagtgaagagcagttaagagccttgaataatcacaggcaaatgttg
    aatgataagaaacaagctcagatccagttggaaattaggaaggccatggaatctgctgaacaaaaggaacaaggtt
    tatcaagggatgtcacaaccgtgtggaagttgcgtattgtaagctattcaaaaaaagaaaaagattcagttatact
    gagtatttggcgtccatcatcagatttatattctctgttaacagaaggaaagagatacagaatttatcatcttgca
    acttcaaaatctaaaagtaaatctgaaagagctaacatacagttagcagcgacaaaaaaaactcagtatcaacaac
    taccggtttcagatgaaattttatttcagatttaccagccacgggagccccttcacttcagcaaatttttagatcc
    agactttcagccatcttgttctgaggtggacctaataggatttgtcgtttctgttgtgaaaaaaacaggacttgcc
    cctttcgtctatttgtcagacgaatgttacaatttactggcaataaagttttggatagaccttaatgaggacatta
    ttaagcctcatatgttaattgctgcaagcaacctccagtggcgaccagaatccaaatcaggccttcttactttatt
    tgctggagatttttctgtgttttctgctagtccaaaagagggccactttcaagagacattcaacaaaatgaaaaat
    actgttgagaatattgacatactttgcaatgaagcagaaaacaagcttatgcatatactgcatgcaaatgatccca
    agtggtccaccccaactaaagactgtacttcagggccgtacactgctcaaatcattcctggtacaggaaacaagct
    tctgatgtcttctcctaattgtgagatatattatcaaagtcctttatcactttgtatggccaaaaggaagtctgtt
    tccacacctgtctcagcccagatgacttcaaagtcttgtaaaggggagaaagagattgatgaccaaaagaactgca
    aaaagagaagagccttggatttcttgagtagactgcctttacctccacctgttagtcccatttgtacatttgtttc
    tccggctgcacagaaggcatttcagccaccaaggagttgtggcaccaaatacgaaacacccataaagaaaaaagaa
    ctgaattctcctcagatgactccatttaaaaaattcaatgaaatttctcttttggaaagtaattcaatagctgacg
    aagaacttgcattgataaatacccaagctcttttgtctggttcaacaggagaaaaacaatttatatctgtcagtga
    atccactaggactgctcccaccagttcagaagattatctcagactgaaacgacgttgtactacatctctgatcaaa
    gaacaggagagttcccaggccagtacggaagaatgtgagaaaaataagcaggacacaattacaactaaaaaatatatc")
  } else if (gene == "RAD51C") {
    return("atgcgcgggaagacgttccgctttgaaatgcagcgggatttggtgagtttcccgctgtctccagcggtgcgg
    gtgaagctggtgtctgcggggttccagactgctgaggaactcctagaggtgaaaccctccgagcttagcaaagaagttgg
    gatatctaaagcagaagccttagaaactctgcaaattatcagaagagaatgtctcacaaataaaccaagatatgctggta
    catctgagtcacacaagaagtgtacagcactggaacttcttgagcaggagcatacccagggcttcataatcaccttctgtt
    cagcactagatgatattcttgggggtggagtgcccttaatgaaaacaacagaaatttgtggtgcaccaggtgttggaaaaa
    cacaattatgtatgcagttggcagtagatgtgcagataccagaatgttttggaggagtggcaggtgaagcagtttttattg
    atacagagggaagttttatggttgatagagtggtagaccttgctactgcctgcattcagcaccttcagcttatagcagaaaa
    acacaagggagaggaacaccgaaaagctttggaggatttcactcttgataatattctttctcatatttattattttcgctgt
    cgtgactacacagagttactggcacaagtttatcttcttccagatttcctttcagaacactcaaaggttcgactagtgatag
    tggatggtattgcttttccatttcgtcatgacctagatgacctgtctcttcgtactcggttattaaatggcctagcccagca
    aatgatcagccttgcaaataatcacagattagctgtaattttaaccaatcagatgacaacaaagattgatagaaatcaggcc
    ttgcttgttcctgcattaggggaaagttggggacatgctgctacaatacggctaatctttcattgggaccgaaagcaaaggtt
    ggcaacattgtacaagtcacccagccagaaggaatgcacagtactgtttcaaatcaaacctcagggatttagagatactgttg
    ttacttctgcatgttcattgcaaacagaaggttccttgagcacccggaaacggtcacgagacccagaggaagaatta")
  } else if (gene == "RAD51D") {
    return("atgggcgtgctcagggtcggactgtgccctggccttaccgaggagatgatccagcttctcaggagccacaggatc
    aagacagtggtggacctggtttctgcagacctggaagaggtagctcagaaatgtggcttgtcttacaaggccctggttgccctg
    aggcgggtgctgctggctcagttctcggctttccccgtgaatggcgctgatctctacgaggaactgaagacctccactgccatc
    ctgtccactggcattggcagtcttgataaactgcttgatgctggtctctatactggagaagtgactgaaattgtaggaggccca
    ggtagcggcaaaactcaggtatgtctctgtatggcagcaaatgtggcccatggcctgcagcaaaacgtcctatatgtagattcc
    aatggagggctgacagcttcccgcctcctccagctgcttcaggctaaaacccaggatgaggaggaacaggcagaagctctccgg
    aggatccaggtggtgcatgcatttgacatcttccagatgctggatgtgctgcaggagctccgaggcactgtggcccagcaggt
    gactggttcttcaggaactgtgaaggtggtggttgtggactcggtcactgcggtggtttccccacttctgggaggtcagcagag
    ggaaggcttggccttgatgatgcagctggcccgagagctgaagaccctggcccgggaccttggcatggcagtggtggtgaccaa
    ccacataactcgagacagggacagcgggaggctcaaacctgccctcggacgctcctggagctttgtgcccagcactcggattctc
    ctggacaccatcgagggagcaggagcatcaggcggccggcgcatggcgtgtctggccaaatcttcccgacagccaacaggtttcc
    aggagatggtagacattgggacctgggggacctcagagcagagtgccacattacagggtgatcagaca")
  } else if (gene == "PALB2") {
    return("atggacgagcctcccgggaagcccctcagctgtgaggagaaggaaaagttaaaggagaaattagcattcttgaaaag
    ggaatacagcaagacactagcccgccttcagcgtgcccaaagagctgaaaagattaagcattctattaagaaaacagtagaagaac
    aagattgtttgtctcagcaggatctctcaccgcagctaaaacactcagaacctaaaaataaaatatgtgtttatgacaagttacaca
    tcaaaacccatcttgatgaagaaactggagaaaagacatctatcacacttgatgttgggcctgagtcctttaaccctggagatggcc
    caggaggattacctatacaaagaacagatgacacccaagaacattttccccacagggtcagtgaccctagtggtgagcaaaagcag
    aagctgccaagcagaagaaagaagcagcagaagaggacatttatttcacaggagagagactgtgtctttggcactgattcactcag
    attgtctgggaaaagactaaaggaacaggaagaaatcagtagcaaaaatcctgctagatcaccagtaactgaaataagaactcacct
    tttaagtcttaaatctgaacttccagattctccagaaccagttacagaaattaatgaagacagtgtattaattccaccaactgccca
    accagaaaaaggtgttgatacattcctaagaagacctaatttcaccagggcgactacagttcctttacagactctatcagatagcgg
    tagtagtcagcaccttgaacacattcctcctaaaggtagcagtgaacttactactcacgacctaaaaaacattagatttacttcacct
    gtaagtttggaggcacaaggcaaaaaaatgactgtctctacagataacctccttgtaaataaagctataagtaaaagtggccaact
    gcccacaagttctaatttagaggcaaatatttcatgttctctaaatgaactcacctacaataacttaccagcaaatgaaaaccaaa
    acttaaaagaacaaaatcaaacagagaaatctttaaaatctcccagtgacactcttgatggcaggaatgaaaatcttcaggaaagt
    gagattctaagtcaacctaagagtcttagcctggaagcaacctctcctctttctgcagaaaaacattcttgcacagtgcctgaag
    ccttctgtttcctgcagaatattatgttagaacaacacgaagcatgtccaattgccagaggaaagtagccgtggaggctgtcattca
    gagtcatttggatgtcaagaaaaaagggtttaaaaataaaaataaggatgcaagtaaaaatttaaacctttccaatgaggaaactga
    ccaaagtgaaattaggatgtctggcacatgcacaggacaaccaagttcaagaacctctcagaaacttctctcattaactaaagtca
    gctctcccgctgggcccactgaagataatgacttgtctaggaaggcagttgcccaagcacctggtagaagatacacaggaaaaaga
    aaatcagcctgcaccccagcatcagatcattgtgaaccacttttgccaacttctagcctgtcgattgttaacaggtccaaggaaga
    gtcacctcacacaaatatcagcacgaaaaattatttattcaagtgaaagggaagaaaagtcgtcatcaaaaagaggattccctttctt
    ggagtaatagtgcttatttatccttggatgatgatgctttcacggctccatttcatagggatggaatgctgagtttaaagcaacta
    ctgtcttttctcagtatcacagactttcagttacctgatgaagactttggacctcttaagcttgaaaaagtgaagtcctgctcagaaa
    aaccagtggagccctttgagtcaaaaatgtttggagagagacatcttaaagagggaagctgtatttttccagaggaactgagtcctaaac
    gcatggatacagaaatggaggacttagaagaggaccttattgttctaccaggaaaatcacatcccaaaaggccaaactcgcaaagcca
    gcatacaaagacgggcctttcttcatccatattactttatactcctttaaatacggttgcgcctgatgataatgacaggcctaccaca
    gacatgtgttcacctgctttccccatcttaggtactactccagcctttggccctcaaggctcctatgaaaaagcatctacagaagttgc
    tggacgaacttgctgcacaccccaacttgctcatttgaaagactcagtctgtcttgccagtgatactaaacaattcgacagttcaggc
    agcccagcaaaaccacataccaccctgcaagtgtcaggcaggcaaggacaacctacctgtgactgtgactctgtcccgccaggaacac
    ctccacccattgagtcattcacttttaaagaaaatcagctctgtagaaacacatgccaggagctgcataaacattccgtcgaacagact
    gaaacagcagagcttcctgcttctgatagcataaacccaggcaacctacaattggtttcagagttaaagaatccttcaggttcctgttcc
    gtagatgtgagtgccatgttttgggaaagagccggttgtaaagagccatgtatcataactgcttgcgaagatgtagtttctctttggaa
    agctctggatgcttggcagtgggaaaaactttatacctggcacttcgcagaggttccagtattacagatagttccagtgcctgatgtgt
    ataatctcgtgtgtgtagctttgggaaatttggaaatcagagagatcagggcattgttttgttcctctgatgatgaaagtgaaaagcaag
    tactactgaagtctggaaatataaaagctgtgcttggcctgacaaagaggaggctagttagtagcagtgggaccctttctgatcaacaagt
    agaagtcatgacgtttgcagaagatggaggaggcaaagaaaaccaatttttgatgccccctgaggagactatactaacttttgctgaggtc
    caagggatgcaagaagctctgcttggtactactattatgaacaacattgttatttggaatttaaaaactggtcaactcctgaaaaagatg
    cacattgatgattcttaccaagcttcagtctgtcacaaagcctattctgaaatggggcttctctttattgtcctgagtcatccctgtgcc
    aaagagagtgagtcgttgcgaagccctgtgtttcagctcattgtgattaaccctaagacgactctcagcgtgggtgtgatgctgtactgtc
    ttcctccagggcaggctggcaggttcctggaaggtgacgtgaaagatcactgtgcagcagcaatcttgacttctggaacaattgccatttg
    ggacttacttctcggtcagtgtactgccctcctcccacctgtctctgaccaacattggtcttttgtgaaatggtcgggtacagactctca
    tttgctggctggacaaaaagatggaaatatatttgtataccactattca")
  } else {
    return("")
  }
}