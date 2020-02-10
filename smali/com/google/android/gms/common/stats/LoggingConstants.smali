.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ALARM_LOG_FILE_NAME:Ljava/lang/String; = ".alarms"

.field public static final CONNECTION_LOG_FILE_NAME:Ljava/lang/String; = ".service_connections"

.field public static final EXTRA_LOG_EVENT:Ljava/lang/String; = "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"

.field public static IGNORE_INTRA_PROCESS:I = 0x0

.field public static LOG_CLOSE_EVENTS:I = 0x0

.field public static final LOG_FILE_PREFIX:Ljava/lang/String; = "stats"

.field public static LOG_LEVEL_OFF:I = 0x0

.field public static LOG_MEM_INFO:I = 0x0

.field public static LOG_OPEN_EVENTS:I = 0x0

.field public static LOG_TOO_LONG_EVENTS:I = 0x0

.field public static LOG_VERBOSE:I = 0x0

.field public static LOG_WAKEFUL_ALARMS:I = 0x0

.field public static final STATS_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final WAKE_LOCK_LOG_FILE_NAME:Ljava/lang/String; = ".wakelocks"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->STATS_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_TOO_LONG_EVENTS:I

    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_OPEN_EVENTS:I

    const/4 v1, 0x4

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_CLOSE_EVENTS:I

    const/16 v1, 0x8

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_VERBOSE:I

    const/16 v1, 0x10

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->IGNORE_INTRA_PROCESS:I

    const/16 v1, 0x20

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_MEM_INFO:I

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_WAKEFUL_ALARMS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
