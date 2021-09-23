.class Ltw/edu/kmu/act/AboutSchoolActivity$2;
.super Ljava/lang/Object;
.source "AboutSchoolActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AboutSchoolActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AboutSchoolActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AboutSchoolActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 110
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AboutSchoolActivity;->access$200(Ltw/edu/kmu/act/AboutSchoolActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 111
    iget-object p2, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    iget-object p2, p2, Ltw/edu/kmu/act/AboutSchoolActivity;->currentLocale:Ljava/lang/String;

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "edesc"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p2, "description"

    goto :goto_0

    .line 112
    :goto_1
    iget-object p3, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/AboutSchoolActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "ename"

    :goto_2
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string p3, "name"

    goto :goto_2

    .line 114
    :goto_3
    new-instance p4, Landroid/content/Intent;

    iget-object p5, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    const-class v0, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p4, p5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "detailList"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 119
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 122
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 124
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 128
    :cond_2
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Ltw/edu/kmu/act/AboutSchoolActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse attList Json Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 141
    new-instance p4, Landroid/content/Intent;

    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    const-class p2, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;

    invoke-direct {p4, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AboutSchoolActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iput-object p5, p1, Ltw/edu/kmu/act/MyApplication;->detailList:Ljava/util/ArrayList;

    const-string p1, "name"

    .line 144
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_5
    const-string p5, "\u9ad8\u91ab\u5927\u5b78\u7c21\u4ecb(\u5f71\u7247)"

    const-string v0, "name"

    .line 146
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    const-string p1, "<html><body><video controls=\"true\" width=\"100%\"><source src=\"http://mbms.kmu.edu.tw:8080/KmuMan/data/kmuweb.mp4\" type=\"video/mp4\"></video></body></html>"

    const-string p2, "loadData"

    .line 149
    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {}, Ltw/edu/kmu/act/AboutSchoolActivity;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "html is "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string p5, "description"

    .line 152
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    .line 154
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<html><body>"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&lt;"

    const-string v1, "<"

    .line 155
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&gt;"

    const-string v1, ">"

    .line 156
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&amp;"

    const-string v1, "&"

    .line 157
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\\\"

    const-string v1, ""

    .line 159
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</body></html>"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "\u6821\u6b4c"

    const-string v0, "name"

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 163
    new-instance p4, Landroid/content/Intent;

    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    const-class p5, Ltw/edu/kmu/act/KMUSongActivity;

    invoke-direct {p4, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_7
    const-string p1, "loadData"

    .line 166
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    :goto_6
    const-string p1, "title"

    .line 170
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolActivity$2;->this$0:Ltw/edu/kmu/act/AboutSchoolActivity;

    invoke-virtual {p1, p4}, Ltw/edu/kmu/act/AboutSchoolActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
