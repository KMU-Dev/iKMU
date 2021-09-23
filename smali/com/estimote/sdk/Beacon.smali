.class public Lcom/estimote/sdk/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/estimote/sdk/Beacon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final macAddress:Ljava/lang/String;

.field private final major:I

.field private final measuredPower:I

.field private final minor:I

.field private final name:Ljava/lang/String;

.field private final proximityUUID:Ljava/lang/String;

.field private final rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/estimote/sdk/Beacon$1;

    invoke-direct {v0}, Lcom/estimote/sdk/Beacon$1;-><init>()V

    sput-object v0, Lcom/estimote/sdk/Beacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/Beacon;->name:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/Beacon;->macAddress:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/estimote/sdk/Beacon;->major:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/estimote/sdk/Beacon;->minor:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/estimote/sdk/Beacon;->measuredPower:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/estimote/sdk/Beacon;->rssi:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/estimote/sdk/Beacon$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/estimote/sdk/Beacon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/estimote/sdk/Utils;->normalizeProximityUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/estimote/sdk/Beacon;->name:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/estimote/sdk/Beacon;->macAddress:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/estimote/sdk/Beacon;->major:I

    .line 34
    iput p5, p0, Lcom/estimote/sdk/Beacon;->minor:I

    .line 35
    iput p6, p0, Lcom/estimote/sdk/Beacon;->measuredPower:I

    .line 36
    iput p7, p0, Lcom/estimote/sdk/Beacon;->rssi:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lcom/estimote/sdk/Beacon;

    .line 93
    iget v1, p0, Lcom/estimote/sdk/Beacon;->major:I

    iget v2, p1, Lcom/estimote/sdk/Beacon;->major:I

    if-eq v1, v2, :cond_2

    return v0

    .line 94
    :cond_2
    iget v1, p0, Lcom/estimote/sdk/Beacon;->minor:I

    iget v2, p1, Lcom/estimote/sdk/Beacon;->minor:I

    if-eq v1, v2, :cond_3

    return v0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    iget-object p1, p1, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/estimote/sdk/Beacon;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/estimote/sdk/Beacon;->major:I

    return v0
.end method

.method public getMeasuredPower()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/estimote/sdk/Beacon;->measuredPower:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/estimote/sdk/Beacon;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/estimote/sdk/Beacon;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProximityUUID()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/estimote/sdk/Beacon;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget v1, p0, Lcom/estimote/sdk/Beacon;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget v1, p0, Lcom/estimote/sdk/Beacon;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    invoke-static {p0}, Lcom/estimote/sdk/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "macAddress"

    iget-object v2, p0, Lcom/estimote/sdk/Beacon;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "proximityUUID"

    iget-object v2, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "major"

    iget v2, p0, Lcom/estimote/sdk/Beacon;->major:I

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "minor"

    iget v2, p0, Lcom/estimote/sdk/Beacon;->minor:I

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "measuredPower"

    iget v2, p0, Lcom/estimote/sdk/Beacon;->measuredPower:I

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "rssi"

    iget v2, p0, Lcom/estimote/sdk/Beacon;->rssi:I

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/estimote/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/estimote/sdk/Beacon;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/estimote/sdk/Beacon;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p2, p0, Lcom/estimote/sdk/Beacon;->major:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Lcom/estimote/sdk/Beacon;->minor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Lcom/estimote/sdk/Beacon;->measuredPower:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/estimote/sdk/Beacon;->rssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
