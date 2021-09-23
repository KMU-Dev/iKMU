.class Ltw/edu/kmu/act/WacTeaMainActivity$1;
.super Ljava/lang/Object;
.source "WacTeaMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaMainActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaMainActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaMainActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 80
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    const-class p3, Ltw/edu/kmu/act/WacTeaFun1Activity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p3, p1, :cond_2

    .line 92
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    const-class p4, Ltw/edu/kmu/act/WacTeaFun5Activity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "title"

    .line 93
    iget-object p4, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/WacTeaMainActivity;->access$000(Ltw/edu/kmu/act/WacTeaMainActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "idx"

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    if-ne p3, p1, :cond_4

    .line 99
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    const-class p4, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "url"

    const-string p4, "https://wac.kmu.edu.tw/loginnew.php?PNO=indexteav2.php&usertype=per&source=ikmuapp"

    .line 100
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "title"

    .line 101
    iget-object p4, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/WacTeaMainActivity;->access$000(Ltw/edu/kmu/act/WacTeaMainActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p3, p4, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "fillWidth"

    const-string p3, "true"

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    const-class p4, Ltw/edu/kmu/act/WacTeaYearActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "title"

    .line 86
    iget-object p4, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/WacTeaMainActivity;->access$000(Ltw/edu/kmu/act/WacTeaMainActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "idx"

    .line 87
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaMainActivity$1;->this$0:Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method
