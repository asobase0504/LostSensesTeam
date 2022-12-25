//--------------------------------------------------
// camera.h
// Author: Buriya Kota
//--------------------------------------------------
#ifndef _CAMERA_H_
#define _CAMERA_H_

#include "renderer.h"

//**************************************************
// 前方前言　実態はNG　ポインタだけならOK
//**************************************************
class CPlayer3D;

//**************************************************
// クラス
//**************************************************
class CCamera
{
public:
	CCamera();
	~CCamera();

	void Init();
	void Uninit();
	void Update();

	void Set();
	D3DXVECTOR3 GetPos() { return m_worldPosR; }
	D3DXMATRIX GetViewMatrix() { return m_mtxView; }
	D3DXMATRIX GetProjMatrix() { return m_mtxProjection; }
	const D3DXVECTOR3& GetRot() { return m_rot; }

private:
	D3DXVECTOR3 m_rot;			// 向き
	D3DXVECTOR3 m_worldPosV;	// 視点（ワールド）
	D3DXVECTOR3 m_worldPosR;	// 注視点（ワールド）
	D3DXVECTOR3 m_localPosV;	// 視点（ローカル）
	D3DXVECTOR3 m_localPosR;	// 注視点（ローカル）
	D3DXVECTOR3 m_posVDest;		// 目的
	D3DXVECTOR3 m_posRDest;		// 目的
	D3DXVECTOR3 m_vecU;			// 上方向ベクトル
	D3DXMATRIX m_mtxProjection;	// プロジェクションマトリックス
	D3DXMATRIX m_mtxView;		// ビューマトリックス
	D3DXVECTOR3 m_rotDest;		// 向き
	float m_fDis;				// 視点から注視点までの距離
	CPlayer3D *m_player;		// プレイヤーの情報
};

#endif
