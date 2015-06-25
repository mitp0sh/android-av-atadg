.class Lde/gdata/mobilesecurity/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/SliderPreference;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/SliderPreference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/o;->a:Lde/gdata/mobilesecurity/util/SliderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 130
    if-eqz p3, :cond_0

    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/o;->a:Lde/gdata/mobilesecurity/util/SliderPreference;

    iput p2, v0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSeekBarValue:I

    .line 133
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
