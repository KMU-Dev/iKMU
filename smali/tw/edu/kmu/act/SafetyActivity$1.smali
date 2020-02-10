.class Ltw/edu/kmu/act/SafetyActivity$1;
.super Ljava/lang/Object;
.source "SafetyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SafetyActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SafetyActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SafetyActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$200(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 101
    invoke-static {}, Ltw/edu/kmu/act/SafetyActivity;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "map is :"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p3, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/SafetyActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "ename"

    goto :goto_0

    :cond_0
    const-string p3, "name"

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "tel"

    .line 103
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 104
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "tel"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 107
    :cond_1
    iget-object p4, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    iget-object p5, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p5}, Ltw/edu/kmu/act/SafetyActivity;->access$500(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Pattern;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-static {p4, p3}, Ltw/edu/kmu/act/SafetyActivity;->access$402(Ltw/edu/kmu/act/SafetyActivity;Ljava/util/regex/Matcher;)Ljava/util/regex/Matcher;

    .line 108
    iget-object p3, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/SafetyActivity;->access$400(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    const/16 p4, 0x8

    const/4 p5, 0x1

    if-eqz p3, :cond_6

    .line 109
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "tel:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 110
    :goto_1
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/SafetyActivity;->access$400(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 111
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/SafetyActivity;->access$400(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080036

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/SafetyActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ename"

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v1, "name"

    goto :goto_2

    :goto_3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    new-array p1, p5, [Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/SafetyActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Tel:"

    goto :goto_4

    :cond_4
    const-string v1, "\u64ad\u6253\u96fb\u8a71:"

    :goto_4
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p1, p2

    new-instance p2, Ltw/edu/kmu/act/SafetyActivity$1$1;

    invoke-direct {p2, p0, p3}, Ltw/edu/kmu/act/SafetyActivity$1$1;-><init>(Ltw/edu/kmu/act/SafetyActivity$1;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/SafetyActivity;->currentLocale:Ljava/lang/String;

    const-string p2, "en"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Cancel"

    goto :goto_5

    :cond_5
    const-string p1, "\u53d6\u6d88"

    :goto_5
    new-instance p2, Ltw/edu/kmu/act/SafetyActivity$1$2;

    invoke-direct {p2, p0}, Ltw/edu/kmu/act/SafetyActivity$1$2;-><init>(Ltw/edu/kmu/act/SafetyActivity$1;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 137
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_6
    const-string p3, "file"

    .line 144
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 145
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {v0, p3}, Ltw/edu/kmu/act/SafetyActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, p5

    const-string v1, "image"

    .line 148
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {v2, v1}, Ltw/edu/kmu/act/SafetyActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, p5

    const-string v3, "action"

    .line 152
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    iget-object v4, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {v4, v3}, Ltw/edu/kmu/act/SafetyActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr p5, v4

    if-eqz p5, :cond_7

    .line 159
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 161
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p3}, Ltw/edu/kmu/act/SafetyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SafetyActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void

    :cond_7
    if-eqz v0, :cond_9

    .line 172
    invoke-static {}, Ltw/com/chte/resource/RawResource;->getInstance()Ltw/com/chte/resource/RawResource;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/SafetyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p5, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p5}, Ltw/edu/kmu/act/SafetyActivity;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p2, p5}, Ltw/com/chte/resource/RawResource;->getFileString(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 173
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 174
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    :goto_6
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    :cond_8
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_9
    if-eqz v2, :cond_a

    .line 189
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    const-class p5, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p2, p3, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "imgFileName"

    .line 190
    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "header"

    const-string p5, "name"

    .line 191
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SafetyActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_a
    const-string p2, "map"

    .line 199
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 200
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_b

    .line 201
    new-instance p3, Landroid/content/Intent;

    iget-object p5, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    const-class v0, Ltw/edu/kmu/act/SafetyMapV2Activity;

    invoke-direct {p3, p5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "map"

    .line 202
    invoke-virtual {p3, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "header"

    const-string p5, "name"

    .line 203
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p1, p3}, Ltw/edu/kmu/act/SafetyActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SafetyActivity;->access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_b
    return-void
.end method
