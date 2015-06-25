.class public final Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wallet/MaskedWallet;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/MaskedWallet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method public setBillingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->e:Lcom/google/android/gms/wallet/Address;

    return-object p0
.end method

.method public setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->i:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object p0
.end method

.method public setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->j:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->k:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object p0
.end method

.method public setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->g:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object p0
.end method

.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->h:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object p0
.end method

.method public setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public setShippingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->a:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->f:Lcom/google/android/gms/wallet/Address;

    return-object p0
.end method
