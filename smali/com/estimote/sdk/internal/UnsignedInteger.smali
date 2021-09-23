.class public final Lcom/estimote/sdk/internal/UnsignedInteger;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"


# static fields
.field public static final MAX_VALUE:Lcom/estimote/sdk/internal/UnsignedInteger;

.field public static final ONE:Lcom/estimote/sdk/internal/UnsignedInteger;

.field public static final ZERO:Lcom/estimote/sdk/internal/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedInteger;->ZERO:Lcom/estimote/sdk/internal/UnsignedInteger;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedInteger;->ONE:Lcom/estimote/sdk/internal/UnsignedInteger;

    const/4 v0, -0x1

    .line 26
    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/internal/UnsignedInteger;->MAX_VALUE:Lcom/estimote/sdk/internal/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    and-int/lit8 p1, p1, -0x1

    .line 32
    iput p1, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    return-void
.end method

.method public static fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 48
    new-instance v0, Lcom/estimote/sdk/internal/UnsignedInteger;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/internal/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 5

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, v0, p0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    long-to-int p0, p0

    .line 58
    invoke-static {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    const/16 v0, 0xa

    .line 82
    invoke-static {p0, v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/estimote/sdk/internal/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 4

    .line 68
    invoke-static {p0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public dividedBy(Lcom/estimote/sdk/internal/UnsignedInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 134
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/estimote/sdk/internal/UnsignedInts;->divide(II)I

    move-result p1

    invoke-static {p1}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 200
    instance-of v0, p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    .line 202
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 164
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public minus(Lcom/estimote/sdk/internal/UnsignedInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 113
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/estimote/sdk/internal/UnsignedInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 144
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/estimote/sdk/internal/UnsignedInts;->remainder(II)I

    move-result p1

    invoke-static {p1}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/estimote/sdk/internal/UnsignedInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 103
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/estimote/sdk/internal/UnsignedInteger;)Lcom/estimote/sdk/internal/UnsignedInteger;
    .locals 1

    .line 124
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/internal/UnsignedInteger;

    iget p1, p1, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    mul-int v0, v0, p1

    invoke-static {v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 212
    invoke-virtual {p0, v0}, Lcom/estimote/sdk/internal/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 221
    iget v0, p0, Lcom/estimote/sdk/internal/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/estimote/sdk/internal/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
