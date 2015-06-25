.class Lde/gdata/mobilesecurity/activities/kidsguard/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/r;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/r;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->onHintClick(Landroid/view/View;)V

    .line 389
    return-void
.end method
