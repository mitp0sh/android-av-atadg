.class Lde/gdata/mobilesecurity/privacy/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ac;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 202
    return-void
.end method
