.class final Lde/gdata/mobilesecurity/activities/kidsguard/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->setDots()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
