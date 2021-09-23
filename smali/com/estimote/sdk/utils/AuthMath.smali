.class public Lcom/estimote/sdk/utils/AuthMath;
.super Ljava/lang/Object;
.source "AuthMath.java"


# static fields
.field static final FIXED_KEY:[B

.field private static final G_BASE:J = 0x5L

.field private static final P_MODULO:J = 0xfffffffbL

.field private static final RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/estimote/sdk/utils/AuthMath;->RANDOM:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    .line 22
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estimote/sdk/utils/AuthMath;->FIXED_KEY:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x76t
        -0xet
        0x7t
        0x1t
        0x36t
        0x25t
        -0x3et
        -0x28t
        0x10t
        0x9t
        0x7ft
        0x20t
        -0x2dt
        0x5t
        0xft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aesDecrypt([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/ECB/NoPadding"

    .line 108
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x2

    .line 109
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method static aesEncrypt([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/ECB/NoPadding"

    .line 101
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 103
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static firstStepSecret(J)I
    .locals 6

    const-wide/16 v0, 0x5

    const-wide v4, 0xfffffffbL

    move-wide v2, p0

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/estimote/sdk/utils/AuthMath;->modExpWithBase(JJJ)I

    move-result p0

    return p0
.end method

.method static hexStringToUnsignedLong(Ljava/lang/String;)J
    .locals 2

    .line 72
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedLong;->valueOf(Ljava/math/BigInteger;)Lcom/estimote/sdk/internal/UnsignedLong;

    move-result-object p0

    invoke-virtual {p0}, Lcom/estimote/sdk/internal/UnsignedLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static macAddressToMacSecret(Ljava/lang/String;)[B
    .locals 9

    .line 87
    invoke-static {p0}, Lcom/estimote/sdk/utils/AuthMath;->hexStringToUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    const/16 v2, 0x8

    shr-long v3, v0, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    shr-long v5, v0, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x18

    shr-long v6, v0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x20

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x28

    shr-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 96
    new-array v1, v4, [B

    const/4 v4, 0x0

    aput-byte p0, v1, v4

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v4, 0x2

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    aput-byte v6, v1, v4

    const/4 v4, 0x4

    aput-byte v7, v1, v4

    const/4 v4, 0x5

    aput-byte v0, v1, v4

    const/4 v4, 0x6

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    aput-byte p0, v1, v2

    const/16 p0, 0x9

    aput-byte v0, v1, p0

    const/16 p0, 0xa

    aput-byte v7, v1, p0

    const/16 p0, 0xb

    aput-byte v6, v1, p0

    const/16 p0, 0xc

    aput-byte v7, v1, p0

    const/16 p0, 0xd

    aput-byte v5, v1, p0

    const/16 p0, 0xe

    aput-byte v6, v1, p0

    const/16 p0, 0xf

    aput-byte v3, v1, p0

    return-object v1
.end method

.method static modExpWithBase(JJJ)I
    .locals 9

    const-wide/16 v0, 0x1

    move-wide v2, p0

    move-wide p0, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-lez v6, :cond_1

    and-long v6, p2, v0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    mul-long p0, p0, v2

    .line 60
    invoke-static {p0, p1, p4, p5}, Lcom/estimote/sdk/internal/UnsignedLongs;->remainder(JJ)J

    move-result-wide p0

    :cond_0
    mul-long v2, v2, v2

    .line 62
    invoke-static {v2, v3, p4, p5}, Lcom/estimote/sdk/internal/UnsignedLongs;->remainder(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    .line 58
    div-long/2addr p2, v4

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method static modExpWithBaseAsLong(JJJ)J
    .locals 0

    .line 68
    invoke-static/range {p0 .. p5}, Lcom/estimote/sdk/utils/AuthMath;->modExpWithBase(JJJ)I

    move-result p0

    invoke-static {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static randomUnsignedInt()J
    .locals 4

    .line 31
    sget-object v0, Lcom/estimote/sdk/utils/AuthMath;->RANDOM:Ljava/security/SecureRandom;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static secondStepSecret(JJLjava/lang/String;)[B
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/estimote/sdk/utils/AuthMath;->sessionKey(JJ)[B

    move-result-object p0

    .line 46
    invoke-static {p4}, Lcom/estimote/sdk/utils/AuthMath;->macAddressToMacSecret(Ljava/lang/String;)[B

    move-result-object p1

    .line 49
    :try_start_0
    sget-object p2, Lcom/estimote/sdk/utils/AuthMath;->FIXED_KEY:[B

    invoke-static {p2, p1}, Lcom/estimote/sdk/utils/AuthMath;->aesEncrypt([B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/estimote/sdk/utils/AuthMath;->aesDecrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sessionKey(JJ)[B
    .locals 6

    const-wide v4, 0xfffffffbL

    move-wide v0, p2

    move-wide v2, p0

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/estimote/sdk/utils/AuthMath;->modExpWithBase(JJJ)I

    move-result p0

    int-to-byte p1, p0

    shr-int/lit8 p2, p0, 0x8

    int-to-byte p2, p2

    shr-int/lit8 p3, p0, 0x10

    int-to-byte p3, p3

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/16 v0, 0x10

    .line 83
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    const/4 v1, 0x5

    aput-byte p3, v0, v1

    const/4 v1, 0x6

    aput-byte p2, v0, v1

    const/4 v1, 0x7

    aput-byte p1, v0, v1

    const/16 v1, 0x8

    aput-byte p1, v0, v1

    const/16 v1, 0x9

    aput-byte p0, v0, v1

    const/16 v1, 0xa

    aput-byte p2, v0, v1

    const/16 v1, 0xb

    aput-byte p3, v0, v1

    const/16 v1, 0xc

    aput-byte p0, v0, v1

    const/16 p0, 0xd

    aput-byte p1, v0, p0

    const/16 p0, 0xe

    aput-byte p3, v0, p0

    const/16 p0, 0xf

    aput-byte p2, v0, p0

    return-object v0
.end method
