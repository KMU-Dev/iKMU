.class public Lcom/google/android/gms/internal/places/zzhh;
.super Ljava/io/IOException;


# instance fields
.field private zzto:Lcom/google/android/gms/internal/places/zzih;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzhh;->zzto:Lcom/google/android/gms/internal/places/zzih;

    return-void
.end method

.method static zzdz()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzea()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzeb()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzec()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzed()Lcom/google/android/gms/internal/places/zzhi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhi;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzee()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzef()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzeg()Lcom/google/android/gms/internal/places/zzhh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzhh;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzhh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzhh;->zzto:Lcom/google/android/gms/internal/places/zzih;

    return-object p0
.end method
