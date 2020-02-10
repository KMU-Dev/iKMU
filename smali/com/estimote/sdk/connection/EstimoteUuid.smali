.class public Lcom/estimote/sdk/connection/EstimoteUuid;
.super Ljava/lang/Object;
.source "EstimoteUuid.java"


# static fields
.field public static final ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

.field public static final AUTH_SEED_CHAR:Ljava/util/UUID;

.field public static final AUTH_SERVICE:Ljava/util/UUID;

.field public static final AUTH_VECTOR_CHAR:Ljava/util/UUID;

.field public static final BATTERY_CHAR:Ljava/util/UUID;

.field public static final ESTIMOTE_SERVICE:Ljava/util/UUID;

.field public static final HARDWARE_VERSION_CHAR:Ljava/util/UUID;

.field public static final MAJOR_CHAR:Ljava/util/UUID;

.field public static final MINOR_CHAR:Ljava/util/UUID;

.field public static final POWER_CHAR:Ljava/util/UUID;

.field public static final SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

.field public static final TEMP_CHAR:Ljava/util/UUID;

.field public static final UUID_NORMAL_CHAR:Ljava/util/UUID;

.field public static final VERSION_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "B9403000-F5F8-466E-AFF9-25556B57FE6D"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->ESTIMOTE_SERVICE:Ljava/util/UUID;

    const-string v0, "B9403003-F5F8-466E-AFF9-25556B57FE6D"

    .line 13
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->UUID_NORMAL_CHAR:Ljava/util/UUID;

    const-string v0, "B9403001-F5F8-466E-AFF9-25556B57FE6D"

    .line 14
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->MAJOR_CHAR:Ljava/util/UUID;

    const-string v0, "B9403002-F5F8-466E-AFF9-25556B57FE6D"

    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->MINOR_CHAR:Ljava/util/UUID;

    const-string v0, "B9403041-F5F8-466E-AFF9-25556B57FE6D"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->BATTERY_CHAR:Ljava/util/UUID;

    const-string v0, "B9403021-F5F8-466E-AFF9-25556B57FE6D"

    .line 17
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->TEMP_CHAR:Ljava/util/UUID;

    const-string v0, "B9403011-F5F8-466E-AFF9-25556B57FE6D"

    .line 18
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    const-string v0, "B9403012-F5F8-466E-AFF9-25556B57FE6D"

    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    const-string v0, "B9404000-F5F8-466E-AFF9-25556B57FE6D"

    .line 21
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->VERSION_SERVICE:Ljava/util/UUID;

    const-string v0, "B9404001-F5F8-466E-AFF9-25556B57FE6D"

    .line 22
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

    const-string v0, "B9404002-F5F8-466E-AFF9-25556B57FE6D"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->HARDWARE_VERSION_CHAR:Ljava/util/UUID;

    const-string v0, "B9402000-F5F8-466E-AFF9-25556B57FE6D"

    .line 25
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SERVICE:Ljava/util/UUID;

    const-string v0, "B9402001-F5F8-466E-AFF9-25556B57FE6D"

    .line 26
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SEED_CHAR:Ljava/util/UUID;

    const-string v0, "B9402002-F5F8-466E-AFF9-25556B57FE6D"

    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_VECTOR_CHAR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
