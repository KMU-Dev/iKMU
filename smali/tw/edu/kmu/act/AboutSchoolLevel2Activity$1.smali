.class Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;
.super Ljava/lang/Object;
.source "AboutSchoolLevel2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AboutSchoolLevel2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AboutSchoolLevel2Activity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;->this$0:Ltw/edu/kmu/act/AboutSchoolLevel2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 64
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;->this$0:Ltw/edu/kmu/act/AboutSchoolLevel2Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->access$000(Ltw/edu/kmu/act/AboutSchoolLevel2Activity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 66
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;->this$0:Ltw/edu/kmu/act/AboutSchoolLevel2Activity;

    const-class p4, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "<html><body>"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "description"

    .line 68
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "&lt;"

    const-string v0, "<"

    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "&gt;"

    const-string v0, ">"

    .line 69
    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "&amp;"

    const-string v0, "&"

    .line 70
    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "\\\\"

    const-string v0, ""

    .line 72
    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "</body></html>"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "loadData"

    .line 73
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "title"

    const-string p4, "name"

    .line 74
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;->this$0:Ltw/edu/kmu/act/AboutSchoolLevel2Activity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
