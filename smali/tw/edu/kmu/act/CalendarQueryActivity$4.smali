.class Ltw/edu/kmu/act/CalendarQueryActivity$4;
.super Ljava/lang/Object;
.source "CalendarQueryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/CalendarQueryActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/CalendarQueryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

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

    .line 245
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$500(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 247
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    .line 248
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "etitle"

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p3, "title"

    goto :goto_0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    .line 249
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "einfo"

    :goto_2
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string p3, "info"

    goto :goto_2

    :goto_3
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$4;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    iget-object p2, p2, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string p3, "en"

    .line 250
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "OK"

    goto :goto_4

    :cond_2
    const-string p2, "\u78ba\u5b9a"

    :goto_4
    new-instance p3, Ltw/edu/kmu/act/CalendarQueryActivity$4$1;

    invoke-direct {p3, p0}, Ltw/edu/kmu/act/CalendarQueryActivity$4$1;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity$4;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
