.class Lde/gdata/mobilesecurity/activities/kidsguard/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bc;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bc;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    .line 694
    return-void
.end method
