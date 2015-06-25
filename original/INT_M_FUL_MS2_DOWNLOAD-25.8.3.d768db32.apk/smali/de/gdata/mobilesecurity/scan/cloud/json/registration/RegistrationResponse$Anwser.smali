.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUBTYPE"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CHALLENGEPARAM"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CHALLENGETYPE"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallengeParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getChallengeType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->c:I

    return v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$Anwser;->a:I

    return v0
.end method
