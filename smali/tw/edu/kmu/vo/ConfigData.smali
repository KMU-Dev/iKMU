.class public Ltw/edu/kmu/vo/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfigData"

.field public static final SMALI_TAG:Ljava/lang/String; = "ConfigData"

.field public static instance:Ltw/edu/kmu/vo/ConfigData;


# instance fields
.field public beaconDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/vo/ConfigData;->beaconDataList:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Ltw/edu/kmu/vo/ConfigData;->initBeaconDataList(Landroid/content/Context;)V

    # Log beaconDataList
    iget-object v0, p0, Ltw/edu/kmu/vo/ConfigData;->beaconDataList:Ljava/util/ArrayList;

    sget-object v1, Ltw/edu/kmu/vo/ConfigData;->SMALI_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    sput-object v0, Ltw/edu/kmu/vo/ConfigData;->instance:Ltw/edu/kmu/vo/ConfigData;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Ltw/edu/kmu/vo/ConfigData;
    .locals 1

    .line 25
    sget-object v0, Ltw/edu/kmu/vo/ConfigData;->instance:Ltw/edu/kmu/vo/ConfigData;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ltw/edu/kmu/vo/ConfigData;

    invoke-direct {v0, p0}, Ltw/edu/kmu/vo/ConfigData;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltw/edu/kmu/vo/ConfigData;->instance:Ltw/edu/kmu/vo/ConfigData;

    .line 28
    :cond_0
    sget-object p0, Ltw/edu/kmu/vo/ConfigData;->instance:Ltw/edu/kmu/vo/ConfigData;

    return-object p0
.end method

.method private getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 79
    new-array p2, p2, [B

    .line 80
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 82
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Ltw/edu/kmu/vo/ConfigData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private initBeaconDataList(Landroid/content/Context;)V
    .locals 6

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/vo/ConfigData;->beaconDataList:Ljava/util/ArrayList;

    const-string v0, "Data"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "URL_BEACON_INFO"

    const-string v3, ""

    .line 43
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "beaconinfo.json"

    .line 48
    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/vo/ConfigData;->getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 61
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_1
    iget-object v2, p0, Ltw/edu/kmu/vo/ConfigData;->beaconDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    sget-object v0, Ltw/edu/kmu/vo/ConfigData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse Beacon error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
