.class Lde/gdata/mobilesecurity/activities/kidsguard/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/l;->a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 244
    const/high16 v0, 0x7f0b0000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/l;->a:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->onGridLongItemClick(I)Z

    move-result v0

    return v0
.end method
