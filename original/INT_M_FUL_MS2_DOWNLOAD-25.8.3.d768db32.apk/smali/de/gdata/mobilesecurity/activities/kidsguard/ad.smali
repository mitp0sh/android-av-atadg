.class Lde/gdata/mobilesecurity/activities/kidsguard/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ad;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ad;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;I)Landroid/app/Dialog;

    .line 243
    return-void
.end method
