.class public Lde/gdata/mobilesecurity/util/SliderPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# static fields
.field protected static final SEEKBAR_RESOLUTION:I = 0x2710


# instance fields
.field protected mSeekBarValue:I

.field protected mSummaries:[Ljava/lang/CharSequence;

.field protected mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/util/SliderPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/util/SliderPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f030099

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->setDialogLayoutResource(I)V

    .line 47
    sget-object v0, Lde/gdata/mobilesecurity/R$styleable;->SliderPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/util/SliderPreference;->setSummary([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 69
    iget v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    iget-object v1, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 70
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    return v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSeekBarValue:I

    .line 114
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 115
    const v0, 0x7f0b034b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 116
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 117
    iget v2, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSeekBarValue:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    new-instance v2, Lde/gdata/mobilesecurity/util/o;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/util/o;-><init>(Lde/gdata/mobilesecurity/util/SliderPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSeekBarValue:I

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 141
    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/util/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->setValue(F)V

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 145
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->getPersistedFloat(F)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->setValue(F)V

    .line 64
    return-void

    .line 63
    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 1

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/SliderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->setSummary([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 85
    return-void
.end method

.method public setSummary([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 79
    return-void
.end method

.method public setValue(F)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 102
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/SliderPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/util/SliderPreference;->persistFloat(F)Z

    .line 105
    :cond_0
    iget v1, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 106
    iput v0, p0, Lde/gdata/mobilesecurity/util/SliderPreference;->mValue:F

    .line 107
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/SliderPreference;->notifyChanged()V

    .line 109
    :cond_1
    return-void
.end method
