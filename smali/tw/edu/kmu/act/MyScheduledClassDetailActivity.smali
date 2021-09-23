.class public Ltw/edu/kmu/act/MyScheduledClassDetailActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "MyScheduledClassDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/MyScheduledClassDetailActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyScheduledClassDetailActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private bundle:Landroid/os/Bundle;

.field private handler:Landroid/os/Handler;

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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->CLOSE_PROGRESSBAR:I

    .line 259
    new-instance v0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$2;-><init>(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->showList()V

    return-void
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 233
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 234
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 238
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 240
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Loal POI Json to Map Exception"

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "seq"

    .line 342
    iget-object v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "seqno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v2, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 345
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 12

    .line 134
    iget-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    iget-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_24

    :cond_0
    const v0, 0x7f0801d7

    .line 153
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801ea

    .line 154
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080210

    .line 155
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08021c

    .line 156
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080226

    .line 157
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08022b

    .line 158
    invoke-virtual {p0, v5}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080230

    .line 159
    invoke-virtual {p0, v6}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 161
    iget-boolean v7, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v7, :cond_1

    const-string v7, "Information"

    goto :goto_0

    :cond_1
    const-string v7, "\u8ab2\u7a0b\u8cc7\u8a0a"

    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Abstract"

    goto :goto_1

    :cond_2
    const-string v0, "\u8ab2\u7a0b\u5927\u7db1"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Goal"

    goto :goto_2

    :cond_3
    const-string v0, "\u8ab2\u7a0b\u76ee\u7684"

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_4

    const-string v0, "Method"

    goto :goto_3

    :cond_4
    const-string v0, "\u6559\u5b78\u65b9\u6cd5"

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_5

    const-string v0, "Requirement"

    goto :goto_4

    :cond_5
    const-string v0, "\u8ab2\u7a0b\u8981\u6c42"

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_6

    const-string v0, "Score"

    goto :goto_5

    :cond_6
    const-string v0, "\u6210\u7a4d\u8a55\u5b9a"

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_7

    const-string v0, "Textbooks"

    goto :goto_6

    :cond_7
    const-string v0, "\u4e3b\u8981\u6559\u6750"

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const v2, 0x7f0801c3

    .line 170
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801c4

    .line 171
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0801c6

    .line 172
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0801c7

    .line 173
    invoke-virtual {p0, v5}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0801c8

    .line 174
    invoke-virtual {p0, v6}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0801c9

    .line 175
    invoke-virtual {p0, v7}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0801ca

    .line 176
    invoke-virtual {p0, v8}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0801cb

    .line 177
    invoke-virtual {p0, v9}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0801cc

    .line 178
    invoke-virtual {p0, v10}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v11, :cond_8

    const-string v11, "Course Number:"

    goto :goto_7

    :cond_8
    const-string v11, "\u7576\u671f\u8ab2\u865f:"

    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "seqno"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v10, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v10, :cond_9

    const-string v10, "Subject:"

    goto :goto_8

    :cond_9
    const-string v10, "\u4e2d\u6587\u79d1\u540d:"

    :goto_8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v10, :cond_a

    const-string v10, "englishco"

    goto :goto_9

    :cond_a
    const-string v10, "chineseco"

    :goto_9
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_b

    const-string v3, "Instructor:"

    goto :goto_a

    :cond_b
    const-string v3, "\u6388\u8ab2\u6559\u5e2b:"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_c

    const-string v3, "teafenam"

    goto :goto_b

    :cond_c
    const-string v3, "teafnam"

    :goto_b
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_d

    const-string v3, "Department:"

    goto :goto_c

    :cond_d
    const-string v3, "\u958b\u8ab2\u55ae\u4f4d:"

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_e

    const-string v3, "edeptnam"

    goto :goto_d

    :cond_e
    const-string v3, "deptnam"

    :goto_d
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_f

    const-string v3, "Credit:"

    goto :goto_e

    :cond_f
    const-string v3, "\u5b78\u5206\u6578:"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "credit"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_10

    const-string v3, "Number of students:"

    goto :goto_f

    :cond_10
    const-string v3, "\u9078\u8ab2\u4eba\u6578:"

    :goto_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cm"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_11

    const-string v3, "Category:"

    goto :goto_10

    :cond_11
    const-string v3, "\u4fee\u7fd2\u5225:"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_12

    const-string v3, "esm"

    goto :goto_11

    :cond_12
    const-string v3, "sm"

    :goto_11
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Office Hour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "outline"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "officehour"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_13

    const-string v3, ""

    goto :goto_12

    :cond_13
    const-string v3, "outline"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "officehour"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800c8

    .line 189
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "outline"

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v4, :cond_14

    const-string v4, "eSyllabn"

    goto :goto_13

    :cond_14
    const-string v4, "syllabn"

    :goto_13
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\\\\t"

    const-string v5, ""

    .line 191
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800c9

    .line 193
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "outline"

    .line 194
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v4, :cond_15

    const-string v4, "ePurpos"

    goto :goto_14

    :cond_15
    const-string v4, "purpos"

    :goto_14
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\\\\t"

    const-string v5, ""

    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800ca

    .line 197
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "outline"

    .line 198
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v4, :cond_16

    const-string v4, "eMethod"

    goto :goto_15

    :cond_16
    const-string v4, "method"

    :goto_15
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\\\\t"

    const-string v5, ""

    .line 199
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800cb

    .line 201
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "outline"

    .line 202
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v4, :cond_17

    const-string v4, "eSeqnir"

    goto :goto_16

    :cond_17
    const-string v4, "seqnir"

    :goto_16
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\\\\t"

    const-string v5, ""

    .line 203
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800cc

    .line 205
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "outline"

    .line 206
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v4, :cond_18

    const-string v4, "eAsses"

    goto :goto_17

    :cond_18
    const-string v4, "asses"

    :goto_17
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800cd

    .line 209
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 211
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "textbook"

    .line 212
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getChildAry(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_24

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v6, :cond_19

    const-string v6, "Author"

    goto :goto_19

    :cond_19
    const-string v6, "\u4f5c\u8005:"

    :goto_19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "author"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    const-string v6, ""

    goto :goto_1a

    :cond_1a
    const-string v6, "author"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v6, :cond_1b

    const-string v6, "  Title:"

    goto :goto_1b

    :cond_1b
    const-string v6, "  \u66f8\u540d:"

    :goto_1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "title"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1c

    const-string v6, ""

    goto :goto_1c

    :cond_1c
    const-string v6, "title"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v6, :cond_1d

    const-string v6, "Book Number"

    goto :goto_1d

    :cond_1d
    const-string v6, "\u66f8\u865f:"

    :goto_1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "seqno"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1e

    const-string v6, ""

    goto :goto_1e

    :cond_1e
    const-string v6, "seqno"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v6, :cond_1f

    const-string v6, "  Category:"

    goto :goto_1f

    :cond_1f
    const-string v6, "  \u985e\u5225:"

    :goto_1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "tpnos"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_20

    const-string v6, ""

    goto :goto_20

    :cond_20
    const-string v6, "tpnos"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    const-string v6, "ISBN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "isbn"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_21

    const-string v6, ""

    goto :goto_21

    :cond_21
    const-string v6, "isbn"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v6, :cond_22

    const-string v6, "  Publisher:"

    goto :goto_22

    :cond_22
    const-string v6, "  \u51fa\u7248\u793e:"

    :goto_22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pub"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_23

    const-string v4, ""

    goto :goto_23

    :cond_23
    const-string v6, "pub"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "===============================\n"

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 221
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 136
    :cond_25
    :goto_24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "Alert"

    goto :goto_25

    :cond_26
    const-string v1, "\u8b66\u793a\u8a0a\u606f"

    :goto_25
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "No Data"

    goto :goto_26

    :cond_27
    const-string v1, "\u67e5\u7121\u8cc7\u6599"

    :goto_26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "OK"

    goto :goto_27

    :cond_28
    const-string v1, "\u78ba\u5b9a"

    :goto_27
    new-instance v2, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;-><init>(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0038

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    sget-object v0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->bundle:Landroid/os/Bundle;

    .line 39
    iget-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->bundle:Landroid/os/Bundle;

    iget-boolean v0, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "englishco"

    goto :goto_0

    :cond_0
    const-string v0, "chineseco"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->display:Landroid/view/Display;

    .line 44
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->url:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 47
    new-instance p1, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$GetServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$GetServerData;-><init>(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;)V

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    sget-object p1, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
