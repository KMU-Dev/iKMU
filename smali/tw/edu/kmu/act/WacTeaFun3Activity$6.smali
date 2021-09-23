.class Ltw/edu/kmu/act/WacTeaFun3Activity$6;
.super Ljava/lang/Object;
.source "WacTeaFun3Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun3Activity;->showTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun3Activity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 206
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->val$queryDialog:Landroid/app/AlertDialog;

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

    .line 211
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1, p3}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$502(Ltw/edu/kmu/act/WacTeaFun3Activity;I)I

    .line 212
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$900(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$800(Ltw/edu/kmu/act/WacTeaFun3Activity;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V

    .line 214
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$6;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
