.class public Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "ASN1Dump.java"


# static fields
.field private static final SAMPLE_SIZE:I = 0x20

.field private static final TAB:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V
    .locals 11
    .parameter "indent"
    .parameter "verbose"
    .parameter "obj"
    .parameter "buf"

    .prologue
    .line 56
    const-string v8, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, nl:Ljava/lang/String;
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v8, :cond_5

    move-object v8, p2

    .line 59
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 60
    .local v1, e:Ljava/util/Enumeration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, tab:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/BERSequence;

    if-eqz v8, :cond_1

    .line 65
    const-string v8, "BER Sequence"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 80
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_0

    sget-object v8, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    :cond_0
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v8, "NULL"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 67
    .end local v5           #o:Ljava/lang/Object;
    :cond_1
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    if-eqz v8, :cond_2

    .line 69
    const-string v8, "DER Sequence"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 73
    :cond_2
    const-string v8, "Sequence"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 90
    .restart local v5       #o:Ljava/lang/Object;
    :cond_3
    instance-of v8, v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v8, :cond_4

    .line 92
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local v5           #o:Ljava/lang/Object;
    invoke-static {v7, p1, v5, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 96
    .restart local v5       #o:Ljava/lang/Object;
    :cond_4
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local v5           #o:Ljava/lang/Object;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 100
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v7           #tab:Ljava/lang/String;
    :cond_5
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v8, :cond_a

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .restart local v7       #tab:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v8, :cond_8

    .line 107
    const-string v8, "BER Tagged ["

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    move-object v5, p2

    .line 114
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 116
    .local v5, o:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/16 v8, 0x5d

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v8

    if-nez v8, :cond_6

    .line 121
    const-string v8, " IMPLICIT "

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 128
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v8, "EMPTY"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    .end local v5           #o:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v7           #tab:Ljava/lang/String;
    .end local p2
    :cond_7
    :goto_3
    return-void

    .line 111
    .restart local v7       #tab:Ljava/lang/String;
    .restart local p2
    :cond_8
    const-string v8, "Tagged ["

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 134
    .restart local v5       #o:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 137
    .end local v5           #o:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v7           #tab:Ljava/lang/String;
    :cond_a
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/BERSet;

    if-eqz v8, :cond_d

    .line 139
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 140
    .restart local v1       #e:Ljava/util/Enumeration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .restart local v7       #tab:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v8, "BER Set"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 150
    .local v5, o:Ljava/lang/Object;
    if-nez v5, :cond_b

    .line 152
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v8, "NULL"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 156
    :cond_b
    instance-of v8, v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v8, :cond_c

    .line 158
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local v5           #o:Ljava/lang/Object;
    invoke-static {v7, p1, v5, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_4

    .line 162
    .restart local v5       #o:Ljava/lang/Object;
    :cond_c
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local v5           #o:Ljava/lang/Object;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_4

    .line 166
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v7           #tab:Ljava/lang/String;
    .restart local p2
    :cond_d
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERSet;

    if-eqz v8, :cond_10

    .line 168
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 169
    .restart local v1       #e:Ljava/util/Enumeration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7       #tab:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v8, "DER Set"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 177
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 179
    .restart local v5       #o:Ljava/lang/Object;
    if-nez v5, :cond_e

    .line 181
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v8, "NULL"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 185
    :cond_e
    instance-of v8, v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v8, :cond_f

    .line 187
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local v5           #o:Ljava/lang/Object;
    invoke-static {v7, p1, v5, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 191
    .restart local v5       #o:Ljava/lang/Object;
    :cond_f
    check-cast v5, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local v5           #o:Ljava/lang/Object;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 195
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v7           #tab:Ljava/lang/String;
    .restart local p2
    :cond_10
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v8, :cond_11

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ObjectIdentifier("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 199
    .restart local p2
    :cond_11
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v8, :cond_12

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Boolean("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 203
    .restart local p2
    :cond_12
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v8, :cond_13

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Integer("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 207
    .restart local p2
    :cond_13
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v8, :cond_15

    move-object v6, p2

    .line 209
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 210
    .local v6, oct:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BER Constructed Octet String"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    if-eqz p1, :cond_14

    .line 213
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 216
    :cond_14
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 219
    .end local v6           #oct:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_15
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    if-eqz v8, :cond_17

    move-object v6, p2

    .line 221
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 222
    .restart local v6       #oct:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DER Octet String"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    if-eqz p1, :cond_16

    .line 225
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 228
    :cond_16
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 231
    .end local v6           #oct:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_17
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v8, :cond_19

    move-object v0, p2

    .line 233
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 234
    .local v0, bt:Lcom/android/org/bouncycastle/asn1/DERBitString;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DER Bit String"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    if-eqz p1, :cond_18

    .line 237
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 240
    :cond_18
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 243
    .end local v0           #bt:Lcom/android/org/bouncycastle/asn1/DERBitString;
    :cond_19
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    if-eqz v8, :cond_1a

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IA5String("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 247
    .restart local p2
    :cond_1a
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    if-eqz v8, :cond_1b

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF8String("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 251
    .restart local p2
    :cond_1b
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v8, :cond_1c

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "PrintableString("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 255
    .restart local p2
    :cond_1c
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    if-eqz v8, :cond_1d

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "VisibleString("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 259
    .restart local p2
    :cond_1d
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v8, :cond_1e

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BMPString("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 263
    .restart local p2
    :cond_1e
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    if-eqz v8, :cond_1f

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "T61String("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 267
    .restart local p2
    :cond_1f
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v8, :cond_20

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTCTime("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 271
    .restart local p2
    :cond_20
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v8, :cond_21

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GeneralizedTime("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 275
    .restart local p2
    :cond_21
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    if-eqz v8, :cond_22

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Unknown "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v8, p2

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->getTag()I

    move-result v8

    const/16 v10, 0x10

    invoke-static {v8, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 279
    .restart local p2
    :cond_22
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;

    if-eqz v8, :cond_23

    .line 281
    const-string v8, "BER"

    invoke-static {v8, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 283
    :cond_23
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v8, :cond_24

    .line 285
    const-string v8, "DER"

    invoke-static {v8, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 287
    :cond_24
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v8, :cond_25

    move-object v2, p2

    .line 289
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .line 290
    .local v2, en:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DER Enumerated("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 292
    .end local v2           #en:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :cond_25
    instance-of v8, p2, Lcom/android/org/bouncycastle/asn1/DERExternal;

    if-eqz v8, :cond_29

    move-object v3, p2

    .line 294
    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERExternal;

    .line 295
    .local v3, ext:Lcom/android/org/bouncycastle/asn1/DERExternal;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "External "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    .restart local v7       #tab:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    if-eqz v8, :cond_26

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Direct Reference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_26
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Indirect Reference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :cond_27
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v8

    if-eqz v8, :cond_28

    .line 307
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    .line 309
    :cond_28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getExternalContent()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v7, p1, v8, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto/16 :goto_3

    .line 314
    .end local v3           #ext:Lcom/android/org/bouncycastle/asn1/DERExternal;
    .end local v7           #tab:Ljava/lang/String;
    :cond_29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method private static calculateAscString([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v0, buf:Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v2, p1, p2

    if-eq v1, v2, :cond_1

    .line 426
    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 428
    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "verbose"

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 369
    .local v0, buf:Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v1, :cond_0

    .line 371
    const-string v1, ""

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    invoke-static {v1, p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    .line 382
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 373
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_1

    .line 375
    const-string v1, ""

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v1, p1, v2, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 379
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .parameter "indent"
    .parameter "bytes"

    .prologue
    const/16 v6, 0x20

    .line 387
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, nl:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 395
    array-length v4, p1

    sub-int/2addr v4, v1

    if-le v4, v6, :cond_0

    .line 397
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :goto_1
    add-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    new-instance v4, Ljava/lang/String;

    array-length v5, p1

    sub-int/2addr v5, v1

    invoke-static {p1, v1, v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    array-length v4, p1

    sub-int v2, v4, v1

    .local v2, j:I
    :goto_2
    if-eq v2, v6, :cond_1

    .line 409
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 411
    :cond_1
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 417
    .end local v2           #j:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "type"
    .parameter "indent"
    .parameter "verbose"
    .parameter "obj"
    .parameter "nl"

    .prologue
    .line 320
    move-object v0, p3

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    .line 321
    .local v0, app:Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    const/16 v4, 0x10

    :try_start_0
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getObject(I)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 328
    .local v3, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ApplicationSpecific["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-static {v5, p2, v4, v1}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DERObject;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v3           #s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 338
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ApplicationSpecific["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
