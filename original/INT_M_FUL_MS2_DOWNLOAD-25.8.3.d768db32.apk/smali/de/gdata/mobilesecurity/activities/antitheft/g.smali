.class Lde/gdata/mobilesecurity/activities/antitheft/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/g;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 511
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->closeDialog()V

    .line 512
    return-void
.end method
