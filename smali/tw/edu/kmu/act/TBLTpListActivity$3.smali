.class Ltw/edu/kmu/act/TBLTpListActivity$3;
.super Ljava/lang/Object;
.source "TBLTpListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLTpListActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLTpListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$300(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "true"

    const-string p4, "readonly"

    .line 158
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 161
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const-class p4, Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 163
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/TBLTpListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p2, "9"

    const-string p4, "ansStatus"

    .line 174
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 176
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iget-boolean p2, p2, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    const-string p2, "\u5df2\u88ab\u5c01\u9396\u7121\u6cd5\u4f5c\u7b54"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 p3, 0x0

    .line 177
    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 178
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 183
    :cond_2
    new-instance p2, Landroid/widget/TextView;

    iget-object p4, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p2, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    iget-object p4, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const/high16 p5, 0x41200000    # 10.0f

    invoke-static {p4, p5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p4

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v0, p5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v1, p5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v2, p5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p5

    invoke-virtual {p2, p4, v0, v1, p5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p4, "\u6ce8\u610f\uff1a\u4e2d\u9014\u9000\u51fa\u6216\u6309HOME\u9375\uff0c\u4ee50\u5206\u8a08\u7b97"

    .line 185
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p4, -0x10000

    .line 186
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p4, 0x2

    const/high16 p5, 0x41a00000    # 20.0f

    .line 187
    invoke-virtual {p2, p4, p5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object p5, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p4, p5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p5, "description"

    .line 189
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u4f5c\u7b54"

    new-instance p4, Ltw/edu/kmu/act/TBLTpListActivity$3$2;

    invoke-direct {p4, p0, p3}, Ltw/edu/kmu/act/TBLTpListActivity$3$2;-><init>(Ltw/edu/kmu/act/TBLTpListActivity$3;I)V

    .line 191
    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const p3, 0x7f0c0133

    .line 209
    invoke-virtual {p2, p3}, Ltw/edu/kmu/act/TBLTpListActivity;->getStringById(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ltw/edu/kmu/act/TBLTpListActivity$3$1;

    invoke-direct {p3, p0}, Ltw/edu/kmu/act/TBLTpListActivity$3$1;-><init>(Ltw/edu/kmu/act/TBLTpListActivity$3;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
