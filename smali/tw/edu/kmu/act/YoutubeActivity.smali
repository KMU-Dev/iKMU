.class public Ltw/edu/kmu/act/YoutubeActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "YoutubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/YoutubeActivity$getVideo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YoutubeActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private progressbar:Landroid/widget/ProgressBar;

.field private serverDataList:Ljava/util/ArrayList;
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

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 45
    iput v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->CLOSE_PROGRESSBAR:I

    .line 102
    new-instance v0, Ltw/edu/kmu/act/YoutubeActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/YoutubeActivity$2;-><init>(Ltw/edu/kmu/act/YoutubeActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/widget/ListView;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/YoutubeActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/YoutubeActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->startVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/YoutubeActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/YoutubeActivity;->showList()V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/YoutubeActivity;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/YoutubeActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->updateYouTubeSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/YoutubeActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private showList()V
    .locals 12

    .line 68
    new-instance v11, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/YoutubeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/YoutubeActivity;->serverDataList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00f7

    const v3, 0x7f0a00f7

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00f8

    const v3, 0x7f0a00f8

    :goto_0
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "speaker"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "imageLink"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "link"

    aput-object v6, v4, v5

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 73
    invoke-virtual {p0}, Ltw/edu/kmu/act/YoutubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 74
    invoke-virtual {p0}, Ltw/edu/kmu/act/YoutubeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    const/16 v9, 0x3c

    const/4 v10, 0x5

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    iput-object v11, p0, Ltw/edu/kmu/act/YoutubeActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/YoutubeActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/YoutubeActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/YoutubeActivity$1;-><init>(Ltw/edu/kmu/act/YoutubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c7
        0x7f08019c
        0x7f0800fe
        0x7f080118
    .end array-data
.end method

.method private startVideo(Ljava/lang/String;)V
    .locals 4

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/embed/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?autoplay=1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/YoutubeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateYouTubeSearch(Ljava/lang/String;)V
    .locals 7

    .line 154
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/16 v0, 0x64

    .line 161
    new-array v0, v0, [B

    .line 162
    new-array v2, v1, [B

    move-object v3, v2

    const/4 v2, 0x0

    .line 166
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    add-int/2addr v2, v4

    .line 170
    new-array v5, v2, [B

    .line 171
    array-length v6, v3

    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    array-length v3, v3

    invoke-static {v0, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    :cond_1
    if-gtz v4, :cond_0

    .line 177
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_4

    .line 183
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 184
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 185
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity;->serverDataList:Ljava/util/ArrayList;

    .line 187
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 191
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "speaker"

    const-string v4, "uploader"

    .line 192
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title"

    const-string v4, "title"

    .line 193
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v3, "id"

    .line 195
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link"

    const-string v5, "id"

    .line 196
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v4, "youtube"

    .line 197
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imageLink"

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "^http://i.ytimg.com/vi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/default.jpg"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Ltw/edu/kmu/act/YoutubeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00f9

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f08014f

    .line 51
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity;->progressbar:Landroid/widget/ProgressBar;

    const p1, 0x7f0c00d0

    .line 52
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080246

    .line 53
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/YoutubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity;->lv:Landroid/widget/ListView;

    .line 54
    iget-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    new-instance p1, Ltw/edu/kmu/act/YoutubeActivity$getVideo;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/YoutubeActivity$getVideo;-><init>(Ltw/edu/kmu/act/YoutubeActivity;Ltw/edu/kmu/act/YoutubeActivity$1;)V

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/YoutubeActivity$getVideo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tw.edu.kmu.act.LoadImageService"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "work"

    const/16 v2, 0x3f7

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/YoutubeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 229
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->resetService()V

    const v0, 0x7f0c001d

    .line 230
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/YoutubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setImageUrl(Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/LoadImageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/YoutubeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method
